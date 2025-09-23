/*
  # Create Posts Table for CMS

  1. New Tables
    - `posts`
      - `id` (uuid, primary key)
      - `title` (text, required)
      - `content` (text, required)
      - `image_url` (text, required)
      - `link_one_title` (text)
      - `link_one_url` (text)
      - `link_two_title` (text)
      - `link_two_url` (text)
      - `link_three_title` (text)
      - `link_three_url` (text)
      - `slug` (text, unique, required)
      - `created_at` (timestamp)

  2. Security
    - Enable RLS on `posts` table
    - Add policy for public read access
    - Add policy for authenticated users to manage posts

  3. Sample Data
    - Insert 10 example posts with varied content
*/

CREATE TABLE IF NOT EXISTS posts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  content text NOT NULL,
  image_url text NOT NULL,
  link_one_title text DEFAULT '',
  link_one_url text DEFAULT '',
  link_two_title text DEFAULT '',
  link_two_url text DEFAULT '',
  link_three_title text DEFAULT '',
  link_three_url text DEFAULT '',
  slug text UNIQUE NOT NULL,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE posts ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Posts are publicly readable"
  ON posts
  FOR SELECT
  TO public
  USING (true);

CREATE POLICY "Authenticated users can manage posts"
  ON posts
  FOR ALL
  TO authenticated
  USING (true)
  WITH CHECK (true);

-- Insert 10 example posts
INSERT INTO posts (title, content, image_url, link_one_title, link_one_url, link_two_title, link_two_url, link_three_title, link_three_url, slug) VALUES
(
  'The Future of Web Development',
  'Exploring the latest trends and technologies shaping the future of web development. From JAMstack architecture to serverless computing, discover how modern tools are revolutionizing the way we build websites and applications. This comprehensive guide covers emerging frameworks, development methodologies, and best practices that every developer should know.',
  'https://images.pexels.com/photos/11035380/pexels-photo-11035380.jpeg?auto=compress&cs=tinysrgb&w=800',
  'Read More',
  'https://example.com/future-web-dev',
  'Live Demo',
  'https://demo.example.com',
  'Source Code',
  'https://github.com/example/future-web',
  'future-of-web-development'
),
(
  'Mastering Modern JavaScript',
  'A deep dive into modern JavaScript features and best practices. Learn about ES6+ features, async/await patterns, and functional programming concepts that will elevate your JavaScript skills. This article covers practical examples and real-world applications of advanced JavaScript techniques.',
  'https://images.pexels.com/photos/4164418/pexels-photo-4164418.jpeg?auto=compress&cs=tinysrgb&w=800',
  'Tutorial',
  'https://example.com/js-tutorial',
  'Code Examples',
  'https://codepen.io/example',
  'Video Course',
  'https://youtube.com/example',
  'mastering-modern-javascript'
),
(
  'CSS Grid vs Flexbox: When to Use What',
  'Understanding the differences between CSS Grid and Flexbox, and knowing when to use each layout method. This comprehensive comparison explores the strengths and use cases of both layout systems, with practical examples and real-world scenarios to help you make informed decisions.',
  'https://images.pexels.com/photos/196644/pexels-photo-196644.jpeg?auto=compress&cs=tinysrgb&w=800',
  'Grid Examples',
  'https://example.com/css-grid',
  'Flexbox Guide',
  'https://example.com/flexbox',
  'Interactive Demo',
  'https://demo.example.com/layouts',
  'css-grid-vs-flexbox'
),
(
  'Building Accessible Web Applications',
  'Learn how to create inclusive web experiences that work for everyone. This guide covers WCAG guidelines, semantic HTML, ARIA attributes, and testing strategies to ensure your applications are accessible to users with disabilities. Discover tools and techniques that make accessibility a natural part of your development workflow.',
  'https://images.pexels.com/photos/7688336/pexels-photo-7688336.jpeg?auto=compress&cs=tinysrgb&w=800',
  'WCAG Guide',
  'https://example.com/wcag',
  'Testing Tools',
  'https://example.com/a11y-tools',
  'Case Studies',
  'https://example.com/accessibility-cases',
  'building-accessible-web-applications'
),
(
  'The Rise of Static Site Generators',
  'Exploring the benefits and use cases of static site generators like Astro, Next.js, and Gatsby. Learn why static sites are making a comeback and how they can improve performance, security, and developer experience. This article covers the JAMstack architecture and modern deployment strategies.',
  'https://images.pexels.com/photos/577585/pexels-photo-577585.jpeg?auto=compress&cs=tinysrgb&w=800',
  'Astro Docs',
  'https://docs.astro.build',
  'JAMstack Guide',
  'https://jamstack.org',
  'Deployment Tips',
  'https://example.com/deploy',
  'rise-of-static-site-generators'
),
(
  'Database Design Best Practices',
  'Essential principles for designing scalable and maintainable databases. Cover normalization, indexing strategies, and performance optimization techniques. Learn how to structure your data for optimal query performance and maintainability in both SQL and NoSQL environments.',
  'https://images.pexels.com/photos/590020/pexels-photo-590020.jpeg?auto=compress&cs=tinysrgb&w=800',
  'SQL Tutorial',
  'https://example.com/sql',
  'NoSQL Guide',
  'https://example.com/nosql',
  'Performance Tips',
  'https://example.com/db-performance',
  'database-design-best-practices'
),
(
  'API Design and Documentation',
  'Creating developer-friendly APIs with proper documentation and versioning strategies. Learn about REST principles, GraphQL benefits, and API security best practices. This guide covers everything from endpoint design to comprehensive documentation that developers actually want to use.',
  'https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?auto=compress&cs=tinysrgb&w=800',
  'REST Guide',
  'https://example.com/rest-api',
  'GraphQL Intro',
  'https://graphql.org',
  'API Tools',
  'https://example.com/api-tools',
  'api-design-and-documentation'
),
(
  'Mobile-First Development Strategies',
  'Implementing responsive design with a mobile-first approach. Learn about progressive enhancement, touch interfaces, and performance optimization for mobile devices. This comprehensive guide covers design patterns and development techniques that prioritize mobile user experience.',
  'https://images.pexels.com/photos/887751/pexels-photo-887751.jpeg?auto=compress&cs=tinysrgb&w=800',
  'Responsive Design',
  'https://example.com/responsive',
  'Mobile UX',
  'https://example.com/mobile-ux',
  'Performance Guide',
  'https://example.com/mobile-perf',
  'mobile-first-development-strategies'
),
(
  'Serverless Architecture Explained',
  'Understanding serverless computing and its impact on modern application development. Explore Function-as-a-Service (FaaS) platforms, cold starts, and scaling strategies. Learn when serverless makes sense and how to architect applications for maximum efficiency and cost-effectiveness.',
  'https://images.pexels.com/photos/1181677/pexels-photo-1181677.jpeg?auto=compress&cs=tinysrgb&w=800',
  'AWS Lambda',
  'https://aws.amazon.com/lambda',
  'Serverless Framework',
  'https://serverless.com',
  'Cost Calculator',
  'https://example.com/serverless-cost',
  'serverless-architecture-explained'
),
(
  'Version Control and Git Workflows',
  'Mastering Git for team collaboration and project management. Learn about branching strategies, merge vs rebase, and collaborative workflows that scale with your team. This guide covers advanced Git techniques and best practices for maintaining clean project history.',
  'https://images.pexels.com/photos/4348401/pexels-photo-4348401.jpeg?auto=compress&cs=tinysrgb&w=800',
  'Git Tutorial',
  'https://git-scm.com/docs',
  'GitHub Flow',
  'https://guides.github.com',
  'Git Workflows',
  'https://example.com/git-workflows',
  'version-control-and-git-workflows'
);