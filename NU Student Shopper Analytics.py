#!/usr/bin/env python
# coding: utf-8

# In[2]:


pip install mysql.connector


# In[3]:


pip install mysql.connector.python


# In[4]:


pip install pymysql


# In[6]:


pip install pandas


# <h2>Connecting Database to Python</h2>

# In[7]:


import mysql.connector


# In[8]:


db_name = 'dmaprj'
db_host = '127.0.0.1'
db_username = 'root'


# In[9]:


import pymysql
from getpass import getpass
def sql_connection():
    try:
        connection = pymysql.connect(
            host = db_host,
            port= int(3306),
            user= db_username,
            password=getpass('Enter password: '),
            db=db_name
        )
        if connection:
            print("Database connected successfully")
            return connection
        else:
            prin("Not Connected")
    except Exception as e:
            print(e)


# In[10]:


conn = sql_connection()
conn


# <h2>Importing Python Libraries</h2>

# In[11]:


import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt


# <h3>Finding the prices of all the products with a specific type: Electronics</h3>

# In[12]:


query = "SELECT price FROM product WHERE P_type = 'Electronics';"
df= pd.read_sql_query(query,conn)
df


# In[13]:


df.describe()


# <h3>Line Graph representing the aggregates of prices in the product type: ELECTRONICS</h3>

# In[14]:


plt.figure(figsize=(10, 6))
plt.plot(df.index, df['price'], label='Price')
plt.axhline(y=df['price'].mean(), color='r', linestyle='--', label='Mean')
plt.axhline(y=df['price'].mean() + df['price'].std(), color='g', linestyle='--', label='Mean + 1 Std Dev')
plt.axhline(y=df['price'].mean() - df['price'].std(), color='b', linestyle='--', label='Mean - 1 Std Dev')

plt.title('Price Distribution with Standard Deviation')
plt.xlabel('Index')
plt.ylabel('Price')
plt.legend()
plt.show()


# <h3>Fetching the total number of products present in each category along with their types</h3>

# In[15]:


query = "SELECT P_type, COUNT(*) as product_count FROM product GROUP BY P_type;"
df2_product_count = pd.read_sql_query(query, conn)
df2_product_count


# <h3> PieChart Representing Percentages of Products by thier Types</h3>

# In[16]:


plt.figure(figsize=(8, 8))
plt.pie(df2_product_count['product_count'], labels=df2_product_count['P_type'], autopct='%1.1f%%', startangle=140)
plt.title('Percentage of Products by Type')
plt.show()


# <h3>Retrieves the maximum and minimum price for each category of products available </h3>

# In[17]:


query = "SELECT P_type, MAX(Price) AS max_price, MIN(Price) AS min_price FROM Product GROUP BY P_type;"
df3 = pd.read_sql_query(query, conn)
df3


# <h3>Bar Chart Representing the MAX and MIN prices for each Product Type</h3>

# In[18]:


plt.figure(figsize=(12, 6))
bar_width = 0.35
index = range(len(df3))

plt.bar(index, df3['max_price'], bar_width, label='Max Price', color='blue')
plt.bar([i + bar_width for i in index], df3['min_price'], bar_width, label='Min Price', color='orange')

plt.xlabel('P_type')
plt.ylabel('Price')
plt.title('Maximum and Minimum Prices for Each P_type')
plt.xticks([i + bar_width / 2 for i in index], df3['P_type'])
plt.legend()
plt.show()


# <h3>Retrieving Order details for products with a price greater than the average price of all products </h3>

# In[19]:


query = "SELECT OrderNum, PurchaseBy, SoldBy, PrdID FROM orderdetails JOIN product p ON PrdID = p.P_ID WHERE p.Price > (SELECT AVG(Price) FROM Product);"
df4 = pd.read_sql_query(query, conn)
df4


# <h3>Retrieving Names of buyers & their order number for products that have a type = Furniture</h3>

# In[20]:


query = """
    SELECT BuyerName, OrderNum
    FROM buyer
    JOIN Orderdetails ON buyer.B_ID = Orderdetails.PurchaseBy
    WHERE Orderdetails.PrdID IN (
        SELECT P_ID
        FROM Product
        WHERE P_type = 'Furniture'
    );
"""

df5 = pd.read_sql_query(query, conn)
df5


# <h3>Combining name of buyers and sellers who have placed or received order</h3>

# In[21]:


query = """
    SELECT BuyerName AS Name FROM buyer
    WHERE B_ID IN (SELECT DISTINCT PurchaseBy FROM Orderdetails)
    UNION
    SELECT SellerName AS Name FROM Seller
    WHERE S_ID IN (SELECT DISTINCT SoldBy FROM Orderdetails);
"""

df6 = pd.read_sql_query(query, conn)
df6


# <h3>RETRIEVING PRODUCTS AND ITS PRICE FROM THE PRODUCT TYPE: "ELECTRONICS"</h3>

# In[22]:


query = "SELECT P_Name, Price FROM product WHERE P_type = 'Electronics';"
df7 = pd.read_sql_query(query, conn)
df7


# In[ ]:




