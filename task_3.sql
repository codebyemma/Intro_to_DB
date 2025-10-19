import mysql.connector

mydb = mysql.connector.connect (
    host = "localhost",
    user = "root",
    password = "Ayomikun.098",
    database = "alx_book_store"
)

mycursor = mydb.cursor()
mycursor.execute("USE alx_book_store;")


mycursor.execute("SHOW TABLES")

for x in mycursor:
    print(x)