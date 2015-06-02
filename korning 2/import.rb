# Use this file to import the sales information into the
# the database.
require "csv"
require "pg"

def db_connection
  begin
    connection = PG.connect(dbname: "korning")
    yield(connection)
  ensure
    connection.close
  end
end


sales = CSV.readlines("sales.csv", headers: true)

inserter = "INSERT INTO sales (
                   employee,
                   customer_and_account_no,
                   product_name,
                   sale_date,
                   sale_amount,
                   units_sold,
                   invoice_no,
                   invoice_frequency )
            VALUES ($1, $2, $3, $4, $5, $6, $7, $8)"

sales.each do |sales|
  employee = sales["employee"]
  customer_and_account_no = sales["customer_and_account_no"]
  product_name = sales["product_name"]
  sale_date = sales["sale_date"]
  sale_amount = sales["sale_amount"]
  units_sold = sales["units_sold"]
  invoice_no = sales["invoice_no"]
  invoice_frequency = sales["invoice_frequency"]

  elements = [employee, customer_and_account_no, product_name, sale_date, sale_amount, units_sold, invoice_no, invoice_frequency]

  db_connection do |conn|
    conn.exec_params(inserter, elements )
  end
end

sales.each do |sales|
  name = sales["employee"]

  db_connection do |conn|
    conn.exec_params("INSERT INTO employees(name) SELECT $1 WHERE NOT EXISTS (SELECT * FROM employees WHERE name = $2)", [name,name])
  end
end
