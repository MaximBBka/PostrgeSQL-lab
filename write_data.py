import psycopg2

conn = psycopg2.connect(
    host="localhost",
    database="lets_goto_it",
    user="usr",
    password="pass",  # Пароль из docker-compose.yml
    port="5432"       # Порт, проброшенный в docker-compose
)

cursor = conn.cursor()
cursor.execute("INSERT INTO users (username, email) VALUES ('john', 'john@example.com');")
conn.commit()
print("Data inserted!")
cursor.close()
conn.close()