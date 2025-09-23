/*
  # Import posts from CSV data

  1. Data Import
    - Import all non-archived posts from the CSV file
    - Map CSV fields to database schema:
      - Name -> title
      - Slug -> slug  
      - Post Summary -> content
      - Main Image -> image_url
      - More images -> link_one_url (as "View Gallery")
      - Categories -> link_two_title (as category tags)
    - Generate appropriate link titles and URLs
    - Filter out archived posts (Archived = true)

  2. Data Processing
    - Clean and format content appropriately
    - Generate meaningful link titles
    - Ensure all slugs are unique
    - Set proper timestamps
*/

-- Insert posts from CSV data (excluding archived posts)
INSERT INTO posts (title, content, image_url, link_one_title, link_one_url, link_two_title, link_two_url, link_three_title, link_three_url, slug, created_at) VALUES

-- Alien Weyland Xenomorph
('Alien Weyland Xenomorph', 'Explore the iconic Xenomorph design from the Alien franchise. This stunning piece captures the essence of H.R. Giger''s biomechanical horror aesthetic, featuring the distinctive elongated head and sleek, predatory form that has terrified audiences for decades. Perfect for fans of science fiction and cinematic horror.', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689f6fb49d450bfcf360b9c0_beelinktom2000alien800.png', 'View Gallery', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689f6fbce1457e35d35ffca3_beelinktom2000alien.png', 'Games & Cinema', '#', 'Support Creator', 'https://example.com/support', 'alien-weyland-xenomorph', '2025-08-15 17:33:34+00'),

-- Ant Wan
('Ant Wan', 'Discover the artistic representation of Ant Wan, a prominent figure in Swedish music culture. This design celebrates the vibrant Swedish music scene with bold colors and contemporary styling. The artwork reflects the energy and creativity that defines modern Scandinavian musical expression.', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689cd13a55b70d07e01c982b_689b900d7de94ac110c18a50_beelinktom2000antwan800.png', 'View Gallery', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689cd13b55b70d07e01c9830_689b8d60d08f53360c581c8f_beelinktom2000antwan.png', 'Music & Swedish', '#', 'Support Creator', 'https://example.com/support', 'antwan', '2025-08-13 17:54:49+00'),

-- Axiom Verge Motif
('Axiom Verge Motif', 'Immerse yourself in the retro-futuristic world of Axiom Verge with this intricate motif design. Inspired by the critically acclaimed indie metroidvania game, this artwork captures the mysterious alien technology and biomechanical aesthetics that make the game so visually striking. A must-have for fans of pixel art and sci-fi gaming.', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689cd13b5dfc753488ffac7f_689bb4615749c62ac98dbd98_beelinktom2000ax800.png', 'View Gallery', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689cd13b5dfc753488ffac85_689a2087af6ad19796e701d6_beelinktom2000ax%2520(1).png', 'Games', '#', 'Support Creator', 'https://example.com/support', 'axiom-verge-motif', '2025-08-13 17:54:48+00'),

-- Black Myth Wukong
('Black Myth Wukong', 'Experience the epic journey of the Monkey King with this stunning Black Myth: Wukong artwork. Based on the highly anticipated action RPG, this design showcases the rich Chinese mythology and breathtaking visuals that define this groundbreaking game. The intricate details celebrate both traditional folklore and cutting-edge game design.', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/68ae070b50d56b78be849500_beelinktomgot800.png', 'View Gallery', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/68ae0711f34f540251636acb_beelinktomwoologo2000.png', 'Games & Cinema', '#', 'Support Creator', 'https://example.com/support', 'black-myth-wukong', '2025-08-26 18:39:26+00'),

-- Ghost of Tsushima
('Ghost of Tsushima', 'Journey to feudal Japan with this beautiful Ghost of Tsushima inspired artwork. Capturing the serene yet deadly world of samurai honor and stealth, this design reflects the game''s stunning visual poetry and emotional depth. The piece embodies the spirit of the lone warrior fighting to protect his homeland against overwhelming odds.', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/68ae09fbcc86406e6cf7351c_beelinktomgot2800.png', 'View Gallery', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/68ae0a06fce432da1d9729a0_beelinktomgot2.png', 'Games & Cinema', '#', 'Support Creator', 'https://example.com/support', 'ghost-of-tsushima', '2025-08-26 18:42:57+00'),

-- Grand Theft Auto Motif
('Grand Theft Auto Motif', 'Dive into the gritty urban landscape of Grand Theft Auto with this iconic motif design. Representing one of gaming''s most influential franchises, this artwork captures the rebellious spirit and cinematic scope that has defined the series for decades. Perfect for fans of open-world gaming and urban culture.', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689cd13bd412311285f93bae_689bb127ff2d858839a9f6fd_beelinktom2000gta800.png', 'View Gallery', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689cd13ad412311285f93ba9_689bb12dc0200a39ae8485cb_beelinktom2000gta.png', 'Games & Cinema', '#', 'Support Creator', 'https://example.com/support', 'grand-theft-auto-motif', '2025-08-13 17:54:49+00'),

-- Heart of Infinity Motif
('Heart of Infinity Motif', 'Explore the mystical Heart of Infinity with this enchanting design. This artwork represents the eternal cycle of energy and possibility, featuring intricate geometric patterns that seem to pulse with otherworldly power. The design speaks to gamers and fantasy enthusiasts who appreciate deep, symbolic artwork.', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689cd13b6f70759b5366f260_689bb417c05c9d7d73837e1c_infinitybox2000800.png', 'View Gallery', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689cd13b6f70759b5366f25b_689a1eba1540f6764fa25473_infinitybox2000.png', 'Games', '#', 'Support Creator', 'https://example.com/support', 'heart-of-infinity-motif', '2025-08-13 17:54:48+00'),

-- Hov1
('Hov1', 'Celebrate Swedish hip-hop culture with this vibrant Hov1 artwork. Representing one of Sweden''s most successful rap groups, this design captures the energy and style that has made them a household name in Scandinavian music. The bold graphics reflect their modern approach to hip-hop and their cultural impact.', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689cd13c1126689e175fa1d3_689b9193ce6092769f64896d_beelinktom2000hov1800.png', 'View Gallery', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689cd13c1126689e175fa1d0_689b919aa4bf6e0a40f5fe3f_beelinktom2000hov1.png', 'Music & Swedish', '#', 'Support Creator', 'https://example.com/support', 'hov1', '2025-08-13 17:54:49+00'),

-- Legend of Zelda Motif
('Legend of Zelda Motif', 'Enter the legendary kingdom of Hyrule with this iconic Zelda crest design. Featuring the royal family''s emblem, this artwork represents one of gaming''s most beloved franchises. The intricate details and golden accents capture the epic fantasy adventure that has captivated players for generations across multiple console generations.', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689cd13c8043e70ce36de169_689bb65630c609fda4b9fb5f_beelinktom2000crest800.png', 'View Gallery', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689cd13c8043e70ce36de16e_689bb65e7d977d78ff6d9c4e_beelinktom2000crest.png', 'Games', '#', 'Support Creator', 'https://example.com/support', 'legend-of-zelda-motif', '2025-08-13 17:54:49+00'),

-- Little Jinder
('Little Jinder', 'Discover the artistic representation of Little Jinder, a notable figure in Swedish music culture. This design showcases the contemporary Swedish music scene with its clean, modern aesthetic. The artwork reflects the innovation and creativity that characterizes modern Scandinavian musical expression and cultural identity.', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689cd13cbc90040fc086e5f3_689b8f4d278d9181845597bc_beelinktom2000ljin800.png', 'View Gallery', 'https://cdn.prod.website-files.com/688e0e9d8c03f7dbc7886953/689cd13cbc90040fc086e5ef_689b8f41f0cc83377b6bc73a_beelinktom2000ljind.png', 'Music & Swedish', '#', 'Support Creator', 'https://example.com/support', 'little-jinder', '2025-08-13 17:54:49+00');