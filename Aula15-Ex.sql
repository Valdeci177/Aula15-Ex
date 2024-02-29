import mysql.connector

conexao = mysql.connector.connect(
    host="localhost",
    user="seu_usuario",
    password="sua_senha"
)

cursor = conexao.cursor()

comando_sql = "CREATE DATABASE IF NOT EXISTS Infinity_School;"

try:
    
    cursor.execute(comando_sql)
    print("Banco de dados Infinity_School criado com sucesso!")
except mysql.connector.Error as erro:
    print("Erro ao criar o banco de dados:", erro)
finally:
    if cursor:
        cursor.close()
    if conexao:
        conexao.close()