DROP TABLE IF EXISTS
-- Таблица постов
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  from_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на автора поста",
  body TEXT NOT NULL COMMENT "Текст поста",
  created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Посты";

DROP TABLE IF EXISTS
-- Таблица лайков
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  from_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на автора лайка",
  to_post_id INT UNSIGNED NOT NULL COMMENT "Ссылка лайкаемый пост",
  to_media_id INT UNSIGNED NOT NULL COMMENT "Ссылка лайкаемое медиа",
  created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Лайки";

DROP TABLE IF EXISTS
-- Таблица связи пользователей и постов
CREATE TABLE posts_users (
  posts_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пост",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  PRIMARY KEY (posts_id, user_id) COMMENT "Составной первичный ключ"
) COMMENT "Авторы постов, связь между пользователями и постами";

DROP TABLE IF EXISTS
-- Таблица связи пользователей и лайков
CREATE TABLE likes_users (
  likes_id INT UNSIGNED NOT NULL COMMENT "Ссылка на лайк",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  PRIMARY KEY (likes_id, user_id) COMMENT "Составной первичный ключ"
) COMMENT "Авторы лайков, связь между пользователями и лайками";

