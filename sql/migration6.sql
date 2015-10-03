DROP TABLE IF EXISTS comment_ids_for_me;
CREATE TABLE IF NOT EXISTS comment_ids_for_me (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `user_id` int NOT NULL,
  `comment_id` int NOT NULL,
  `created_at` timestamp NOT NULL,

  KEY `comment_id` (`comment_id`),
  KEY `user_id` (`user_id`,`created_at`)
) DEFAULT CHARSET=utf8;
INSERT INTO comment_ids_for_me (user_id, comment_id, created_at)
SELECT e.user_id, c.id, c.created_at FROM comments c JOIN entries e ON c.entry_id = e.id;
