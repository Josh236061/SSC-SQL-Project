
import pandas as pd

# File path to your Excel file
file_path = "swift_master_equipment_list.xlsx"

# Load the Excel file
data = pd.read_excel(file_path)

# Define table name
table_name = "Swift_Equipment"

# Open a file to write SQL seed statements
with open("seed_file.sql", "w") as f:
    # Write SQL insert statements
    for _, row in data.iterrows():
        sql = f"INSERT INTO {table_name} (UNIT #, LOCATION, YEAR, MODEL/SPECS, MAKE, MODEL, VIN#) VALUES ('{row['UNIT #']}','{row['LOCATION']}', {row['YEAR']}, {row['MODEL/SPECS']}, '{row['VIN#']}');\n"
        f.write(sql)

print("SQL seed file generated: seed_file.sql")