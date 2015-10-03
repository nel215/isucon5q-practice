DROP TABLE IF EXISTS recent_comments;
CREATE TABLE IF NOT EXISTS recent_comments(
  `id` int NOT NULL PRIMARY KEY,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `user_id` (`user_id`,`created_at`),
  KEY `created_at` (`created_at`)
) DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS comment_ids_of_friends;
CREATE TABLE IF NOT EXISTS comment_ids_of_friends (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `user_id` int NOT NULL,
  `comment_id` int NOT NULL,
  `created_at` timestamp NOT NULL,

  KEY `user_id` (`user_id`,`created_at`)
) DEFAULT CHARSET=utf8;
