import mysql.connector

# Connect to the MySQL server
cnx = mysql.connector.connect(
    user='your_username',
    password='your_password',
    host='your_host',
    database='your_database'
)

# Create a cursor object to execute SQL queries
cursor = cnx.cursor()

# Execute the query to retrieve the list of databases
cursor.execute("SHOW DATABASES")

# Fetch all the results from the query
databases = cursor.fetchall()

# Print the list of databases
for db in databases:
    print(db[0])

# Close the cursor and connection
cursor.close()
cnx.close()
