-- Создаем базу данных, если её нет (на всякий случай)
CREATE DATABASE lets_goto_it;

-- Подключаемся к ней
\c lets_goto_it

-- Создаем таблицу users
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL
);

-- Добавляем тестовые данные
INSERT INTO users (username, email) VALUES
  ('alice', 'alice@example.com'),
  ('bob', 'bob@example.com');

CREATE USER usr WITH PASSWORD 'pass';
GRANT ALL PRIVILEGES ON DATABASE lets_goto_it TO usr;
GRANT ALL PRIVILEGES ON TABLE users TO usr;
GRANT USAGE, SELECT ON SEQUENCE users_id_seq TO usr;