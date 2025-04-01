import psycopg2

conn = psycopg2.connect(
    host="localhost",
    database="lets_goto_it",
    user="usr",
    password="pass",  # Пароль из docker-compose.yml
    port="5432"       # Порт, проброшенный в docker-compose
)

cursor = conn.cursor()
cursor.execute("SELECT * FROM users;")
for row in cursor.fetchall():
    print(f"ID: {row[0]}, Username: {row[1]}, Email: {row[2]}")
cursor.close()
conn.close()