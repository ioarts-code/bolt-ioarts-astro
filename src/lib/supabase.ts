import { createClient } from '@supabase/supabase-js'

const supabaseUrl = import.meta.env.PUBLIC_SUPABASE_URL || 'https://placeholder.supabase.co'
const supabaseKey = import.meta.env.PUBLIC_SUPABASE_ANON_KEY || 'placeholder-key'

// Check if we're using placeholder values
export const isPlaceholder = supabaseUrl === 'https://placeholder.supabase.co' || supabaseKey === 'placeholder-key'

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