import { createClient } from '@supabase/supabase-js'

// Your Supabase project configuration
const supabaseUrl = 'https://irocoqlvmhxqwlrasala.supabase.co'
const supabaseKey = import.meta.env.PUBLIC_SUPABASE_ANON_KEY || 'your-anon-key-here'

// Check if we have valid configuration
export const isPlaceholder = !supabaseKey || supabaseKey === 'your-anon-key-here'

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