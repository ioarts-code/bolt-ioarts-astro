import { createClient } from '@supabase/supabase-js'

// Your Supabase project configuration
const supabaseUrl = 'https://irocoqlvmhxqwlrasala.supabase.co'
const supabaseKey = import.https://irocoqlvmhxqwlrasala.supabase.co || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imlyb2NvcWx2bWh4cXdscmFzYWxhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTg2MzgwOTMsImV4cCI6MjA3NDIxNDA5M30.SPsE2xC0xzuGS2Bgy3_bk7AHgh5SLMJPsW0rU3KWP4E'

// Check if we have valid configuration
export const isPlaceholder = !supabaseKey || supabaseKey === 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imlyb2NvcWx2bWh4cXdscmFzYWxhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTg2MzgwOTMsImV4cCI6MjA3NDIxNDA5M30.SPsE2xC0xzuGS2Bgy3_bk7AHgh5SLMJPsW0rU3KWP4E'

export const supabase = createClient(supabaseUrl, supabaseKey)

export interface Post {
  id: string
  title: string
  content: string
  image_url: string
  link_one_title: string
  link_one_url: string
  link_two_title: string
  link_two_url: string
  link_three_title: string
  link_three_url: string
  created_at: string
  slug: string
}