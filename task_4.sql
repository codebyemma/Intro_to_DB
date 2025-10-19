import mysql.connector

mydb = mysql.connector.connect (
    host = "localhost",
    user = "root",
    password = "Ayomikun.098"
    database = "alx_book_store"
)

mycursor = mydb.cursor()

sql = f"""
SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_KEY, EXTRA
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'Books'
"""

mycursor.execute(sql)
for col in mycursor:
    print(col)

mycursor.close()
mydb.close()