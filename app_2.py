import sqlite3
# Connect to a database (or create one if it doesn't exist):
connection=sqlite3.connect('example_2.db')
# Create a cursor object to interact with the database:
cursor=connection.cursor();
#Creating a Table:
cursor.execute('''CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT, grade
 REAL)''')
#Inserting Data:
cursor.execute("INSERT INTO students (name, grade) VALUES ('Alice', 85.5)")
#Querying the Database:-
cursor.execute("SELECT * FROM students")
rows = cursor.fetchall()
for row in rows:
  print(row)
# Save (commit) the changes:
#connection.commit()
#Closing the Connection:
#connection.close()
#Error Handling:
# try:
#   cursor.execute("SELECT * FROM non_existing_table")
# except sqlite3.OperationalError as e:
#    print(f"An error occurred: {e}")
cursor.execute("INSERT INTO students (name, grade) VALUES (?, ?)", ('Bob', 92.3))
cursor.execute("SELECT * FROM students")
rows = cursor.fetchall()
for row in rows:
  print(row)