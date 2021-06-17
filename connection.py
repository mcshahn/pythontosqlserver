import pyodbc
import pandas as pd
# Some other example server values are
# server = 'localhost\sqlexpress' # for a named instance
# server = 'myserver,port' # to specify an alternate port
server = 'localhost' 
database = 'digiYoCards' 
username = 'sa' 
password = 'Batstoi@2021'  
# print(pyodbc.drivers())  Use this prompt to check your driver name
cnxn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER='+server+';DATABASE='+database+';UID='+username+';PWD='+ password)
cursor = cnxn.cursor()

# select 2 rows from SQL table to insert in dataframe.
query = "SELECT * FROM dbo.cardsMetadata;"
df = pd.read_sql(query, cnxn)
print(df.head(2))
