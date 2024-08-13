CREATE TABLE `movie` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `plot` longtext,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `cast` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `biography` longtext,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `movie_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_movie_id` (`movie_id`),
  CONSTRAINT `FK_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
