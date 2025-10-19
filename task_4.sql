import mysql.connector

mydb = mysql.connector.connect (
    host = "localhost",
    user = "root",
    password = "Ayomikun.098"
    database = "alx_book_store"
)

mycursor = mydb.cursor()

sql = f"""
INFORMATION_SCHEMA.COLUMNS", "COLUMN_NAME", "COLUMN_TYPE",
 "TABLE_SCHEMA = 'alx_book_store'", "TABLE_NAME = 'Books'
"""

mycursor.execute(sql)
for col in mycursor:
    print(col)

mycursor.close()
mydb.close()