import { createClient } from '@supabase/supabase-js'

// Get Supabase configuration from environment variables
const supabaseUrl = import.meta.env.VITE_SUPABASE_URL || 'https://irocoqlvmhxqwlrasala.supabase.co'
const supabaseKey = import.meta.env.VITE_SUPABASE_ANON_KEY

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