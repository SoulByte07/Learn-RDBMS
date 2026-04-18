import pandas as pd
from sqlalchemy import create_engine

def excel_to_db(file_path, db_name, table_name):
    # 1. Read the Excel file
    # pandas uses 'openpyxl' under the hood for .xlsx
    df = pd.read_excel(file_path)

    # 2. Data Cleaning (Optional but professional)
    # Example: Ensure all column names are lowercase and have no spaces
    df.columns = [c.lower().replace(' ', '_') for c in df.columns]

    # 3. Push to SQL (SQLite example)
    engine = create_engine(f'sqlite:///{db_name}.db')
    df.to_sql(table_name, engine, if_exists='replace', index=False)
    
    print(f"Successfully imported {len(df)} rows into {table_name}.")

# Sample Input: "inventory.xlsx" with columns ["Product Name", "Price"]
# Expected Output: A SQLite table named 'products' with columns [product_name, price]
if __name__ == "__main__":
    excel_to_db('Retail.xlsx', 'Retail', 'products')
