import 'dotenv/config'
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'
import https from 'https'
import pg from 'pg'
import ws from 'ws'

const supabase = createClient(
  process.env.SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY,
  {
    realtime: { transport: ws },
    auth: { persistSession: false }
  }
)

const { Client } = pg

const BUCKET_NAME = 'k53 storage'
const PROJECT_REF = 'ejmpamopyasfuxhbaffm'

// Download a file from URL
function downloadFile(url) {
  return new Promise((resolve, reject) => {
    https.get(url, (response) => {
      if (response.statusCode === 302 || response.statusCode === 301) {
        // Follow redirect
        https.get(response.headers.location, (res) => {
          const chunks = []
          res.on('data', chunk => chunks.push(chunk))
          res.on('end', () => resolve(Buffer.concat(chunks)))
          res.on('error', reject)
        }).on('error', reject)
      } else if (response.statusCode === 200) {
        const chunks = []
        response.on('data', chunk => chunks.push(chunk))
        response.on('end', () => resolve(Buffer.concat(chunks)))
        response.on('error', reject)
      } else {
        reject(new Error(`HTTP ${response.statusCode} for ${url}`))
      }
    }).on('error', reject)
  })
}

async function uploadToStorage(filename, buffer) {
  const { data, error } = await supabase.storage
    .from(BUCKET_NAME)
    .upload(filename, buffer, {
      contentType: 'image/jpeg',
      upsert: true
    })

  if (error) {
    throw new Error(`Upload failed for ${filename}: ${error.message}`)
  }
  return data
}

async function main() {
  console.log('Starting image migration...\n')

  let downloaded = 0
  let failed = 0

  // Download and upload road sign images (tests 1-6, questions 1-30)
  console.log('Downloading road sign images...')
  for (let test = 1; test <= 6; test++) {
    for (let question = 1; question <= 30; question++) {
      const filename = `${test}-${question}.jpg`
      const url = `https://www.freek53.xyz/K53_Sign_Test/img/${filename}`

      try {
        const buffer = await downloadFile(url)
        await uploadToStorage(filename, buffer)
        downloaded++
        process.stdout.write(`\rDownloaded: ${downloaded}/181`)
      } catch (error) {
        console.error(`\nFailed: ${filename} - ${error.message}`)
        failed++
      }
    }
  }

  // Download and upload car.jpg
  console.log('\n\nDownloading vehicle controls image...')
  try {
    const carBuffer = await downloadFile('https://www.freek53.xyz/K53_Controls_Test/img/car.jpg')
    await uploadToStorage('car.jpg', carBuffer)
    downloaded++
    console.log('Downloaded: car.jpg')
  } catch (error) {
    console.error(`Failed: car.jpg - ${error.message}`)
    failed++
  }

  console.log(`\nDownload complete: ${downloaded} succeeded, ${failed} failed\n`)

  // Update database URLs
  console.log('Updating database URLs...')

  const client = new Client({
    connectionString: `postgresql://postgres.${PROJECT_REF}:${encodeURIComponent(process.env.DB_PASSWORD)}@aws-0-eu-west-1.pooler.supabase.com:6543/postgres`,
    ssl: { rejectUnauthorized: false }
  })

  await client.connect()

  // Update road sign URLs
  const signResult = await client.query(`
    UPDATE questions
    SET image_url = REPLACE(image_url, 'https://www.freek53.xyz/K53_Sign_Test/img/',
      'https://${PROJECT_REF}.supabase.co/storage/v1/object/public/${BUCKET_NAME}/')
    WHERE image_url LIKE '%freek53.xyz/K53_Sign_Test%'
  `)
  console.log(`Updated ${signResult.rowCount} road sign URLs`)

  // Update vehicle controls URLs
  const controlsResult = await client.query(`
    UPDATE questions
    SET image_url = REPLACE(image_url, 'https://www.freek53.xyz/K53_Controls_Test/img/',
      'https://${PROJECT_REF}.supabase.co/storage/v1/object/public/${BUCKET_NAME}/')
    WHERE image_url LIKE '%freek53.xyz/K53_Controls_Test%'
  `)
  console.log(`Updated ${controlsResult.rowCount} vehicle controls URLs`)

  await client.end()

  console.log('\nMigration complete!')
}

main().catch(console.error)
