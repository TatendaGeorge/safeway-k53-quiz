import pg from 'pg'
import fs from 'fs'
import path from 'path'
import { fileURLToPath } from 'url'

const __filename = fileURLToPath(import.meta.url)
const __dirname = path.dirname(__filename)

const { Client } = pg

async function runMigrations() {
  const client = new Client({
    connectionString: `postgresql://postgres.ejmpamopyasfuxhbaffm:${encodeURIComponent(process.env.DB_PASSWORD)}@aws-0-eu-west-1.pooler.supabase.com:6543/postgres`,
    ssl: { rejectUnauthorized: false }
  })

  try {
    console.log('Connecting to database...')
    await client.connect()
    console.log('Connected!\n')

    // Run schema.sql
    console.log('Running schema.sql...')
    const schema = fs.readFileSync(path.join(__dirname, 'supabase', 'schema.sql'), 'utf8')
    await client.query(schema)
    console.log('Schema created successfully!\n')

    // Run seed.sql
    console.log('Running seed.sql (60 questions)...')
    const seed = fs.readFileSync(path.join(__dirname, 'supabase', 'seed.sql'), 'utf8')
    await client.query(seed)
    console.log('Seed data inserted successfully!\n')

    console.log('All migrations completed!')
  } catch (error) {
    console.error('Error:', error.message)
    process.exit(1)
  } finally {
    await client.end()
  }
}

runMigrations()
