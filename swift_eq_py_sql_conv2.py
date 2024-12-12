
import pandas as pd

# File path to your Excel file
file_path = "swift_master_equipment_list2.xlsx"

# Define table name (you can modify this if needed for each sheet)
table_name = "Swift_Equipment"

# Load the Excel file
excel_data = pd.ExcelFile(file_path)

# Open a file to write SQL seed statements
with open("seed_file.sql", "w") as f:
    for sheet_name in excel_data.sheet_names:
        # Load the current sheet into a DataFrame
        data = pd.read_excel(file_path, sheet_name=sheet_name)
        
        # Write a comment in the seed file for the current sheet
        f.write(f"-- Seed data from sheet: {sheet_name}\n")
        
        # Write SQL insert statements for each row in the sheet
        for _, row in data.iterrows():
            # Replace any NaN values with NULL for SQL compatibility
            row = row.fillna("NULL")
            
        sql = f"INSERT INTO {table_name} (UNIT #, LOCATION, YEAR, MAKE, MODEL, VIN#) VALUES ('{row['UNIT #']}','{row['LOCATION']}', {row['YEAR']}, '{row['VIN#']}');\n"
        f.write(sql)
        
        # Add a blank line after each sheet's data
        f.write("\n")

print("SQL seed file generated: seed_file.sql")