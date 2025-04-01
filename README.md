Это тестовая лаба для тренировки работы с PostgreSQL.

Как запустить:
1) Устанавливаем Python и библиотеку psycopg2
- apt update
- apt install python3-pip
- apt install python3-psycopg2
2) Запускаем контейнер с PostgreSQL.
- docker-compose up -d

Как тестировать:
1) Отоброзить данные с базы lets_goto_it таблицы users.
- python3 read_data.py
2) Сделать бекап базы
- ./backup.sh
3) Записать новые данные в таблицу
- python3 write_data.py
4) Восстановить базу
- docker-compose exec -T psql pg_restore -U postgres -d lets_goto_it --clean < ./backups/<имя_бекапа>

Можно поиграться изменив скрипты, добавив новые. Создавать новые базы, делать новые таблицы, создовать пользователей и т.д.
