import pg from 'pg'
import fs from 'fs'
import path from 'path'
import { fileURLToPath } from 'url'

const __filename = fileURLToPath(import.meta.url)
const __dirname = path.dirname(__filename)

const { Client } = pg

async function reseed() {
  const client = new Client({
    connectionString: `postgresql://postgres.ejmpamopyasfuxhbaffm:${encodeURIComponent(process.env.DB_PASSWORD)}@aws-0-eu-west-1.pooler.supabase.com:6543/postgres`,
    ssl: { rejectUnauthorized: false }
  })

  try {
    console.log('Connecting to database...')
    await client.connect()
    console.log('Connected!\n')

    // Truncate tables with CASCADE
    console.log('Truncating questions and categories tables...')
    await client.query('TRUNCATE TABLE questions CASCADE')
    await client.query('TRUNCATE TABLE categories CASCADE')
    console.log('Tables truncated!\n')

    // Insert categories
    console.log('Inserting categories...')
    await client.query(`
      INSERT INTO categories (id, name, slug) VALUES
        (1, 'Road Signs', 'road_signs'),
        (2, 'Rules of the Road', 'rules_of_the_road'),
        (3, 'Vehicle Controls', 'vehicle_controls')
    `)
    console.log('Categories inserted!\n')

    // Run seed-new.sql
    console.log('Running seed-new.sql (308 questions)...')
    const seed = fs.readFileSync(path.join(__dirname, 'supabase', 'seed-new.sql'), 'utf8')
    await client.query(seed)
    console.log('Seed data inserted successfully!\n')

    // Verify count
    const result = await client.query('SELECT COUNT(*) FROM questions')
    console.log(`Total questions: ${result.rows[0].count}`)

    console.log('\nReseed completed!')
  } catch (error) {
    console.error('Error:', error.message)
    process.exit(1)
  } finally {
    await client.end()
  }
}

reseed()
