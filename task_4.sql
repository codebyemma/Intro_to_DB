import mysql.connector

mydb = mysql.connector.connect (
    host = "localhost",
    user = "root",
    password = "Ayomikun.098"
    database = "alx_book_store"
)

mycursor = mydb.cursor()

sql = f"""
SELECT * FROM Books
"""

mycursor.execute(sql)
for col in mycursor:
    print(col)

mycursor.close()
mydb.close()