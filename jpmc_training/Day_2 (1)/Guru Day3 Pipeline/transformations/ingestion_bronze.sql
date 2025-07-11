-- data sets in lake house
--STreaming table
--materialized view
-- views

---s3://jpmctraining/input_files/sales

--ingestion sales to bronze
create streaming table sales_pl as 
SELECT * from stream read_files("s3://jpmctraining/input_files/sales",format=>"csv");

--ingestion products to bronze
create streaming table products_pl as 
SELECT * from stream read_files("s3://jpmctraining/input_files/products",format=>"csv");

--ingestion customers to bronze
create streaming table customers_pl as 
SELECT * from stream read_files("s3://jpmctraining/input_files/customers",format=>"csv");

