/* This is a SQL File
*/

CREATE TABLE categories (
    category_id int NOT NULL,
    category_name varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    PRIMARY KEY (category_id)
); /* creating categories table */

CREATE TABLE customers (
    customer_id varchar(255) NOT NULL,
    company_name varchar(255) NOT NULL,
    contact_name varchar(255) NOT NULL,
    contact_title varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    city varchar(255) NOT NULL,
    region varchar(255) NOT NULL,
    postal_code varchar(255) NOT NULL,
    country varchar(255) NOT NULL,
    phone varchar(255) NOT NULL,
    fax varchar(255) NOT NULL,
    PRIMARY KEY (customer_id)
); /* creating customers table */

CREATE TABLE regions (
    region_id int NOT NULL,
    region_description varchar(255) NOT NULL,
    PRIMARY KEY (region_id)
); /* creating regions table */

CREATE TABLE employees(
    employee_id int NOT NULL,
    last_name varchar(255) ,
    first_name varchar(255) ,
    title varchar(255),
    title_of_courtesy varchar(255),
    birth_date date,
    hire_date date,
    address varchar(255),
    city varchar(255),
    region varchar(255),
    postal_code varchar(255),
    country varchar(255),
    home_phone varchar(255),
    extension varchar(255),
    reports_to int,
    PRIMARY KEY (employee_id)
);/*creating employees table*/

CREATE TABLE shippers(
    shipper_id int NOT NULL,
    company_name varchar(255),
    phone varchar(255),
    PRIMARY KEY(shipper_id)
    );/* creating shippers table*/
CREATE TABLE employee_territories(
    employee_id int NOT NULL,
    territory_id int
);/*creating employee_territories table*/

CREATE TABLE order_details(
    order_id int NOT NULL,
    product_id int NOT NULL,
    unit_price DECIMAL,
    quantity int,
    discount DECIMAL
);/*creating order_details table*/

CREATE TABLE orders(
    order_id int NOT NULL,
    customer_id varchar(255) NOT NULL,
    employee_id varchar(255) NOT NULL,
    order_date date,
    required_date date,
    shipped_date date,
    ship_via int NOT NULL,
    freight decimal,
    ship_name varchar(255),
    ship_address varchar(255),
    ship_city varchar(255),
    ship_region varchar(255),
    ship_postal_code varchar(255),
    ship_country varchar(255),
    PRIMARY KEY (order_id)
);/*creating orders table*/

CREATE TABLE products(
    product_id int NOT NULL,
    product_name varchar(255) ,
    supplier_id int NOT NULL,
    category_id int NOT NULL,
    quantity_per_unit varchar(255),
    unit_price DECIMAL,
    units_in_stock int,
    units_on_order int,
    reorder_level int,
    discontinued int,
    PRIMARY KEY (product_id)
);/*creating products table*/

CREATE TABLE suppliers(
    supplier_id int NOT NULL,
    company_name varchar(255) ,
    contact_name varchar(255) ,
    contact_title varchar(255),
    address varchar(255),
    city varchar(255),
    region varchar(255),
    postal_code varchar(255),
    country varchar(255),
    phone varchar(255),
    fax varchar(255),
    home_phone varchar(255),
    PRIMARY KEY (supplier_id)
);/*creating suppliers table*/

CREATE TABLE territories (
    territory_id int NOT NULL,
    territory_description varchar(255),
    region_id int NOT NULL,
    PRIMARY KEY (territory_id)
); /* creating territories table */


/*Inserting into categories table*/ 
Insert into categories
values('1','Beverages',	'Soft drinks, coffees, teas, beers, and ales');
Insert into categories
values('2','Condiments','Sweet and savory sauces, relishes, spreads, and seasonings');
Insert into categories
values('3','Confections','Desserts, candies, and sweet breads');
Insert into categories
values('4','Dairy Products','Cheeses');
Insert into categories
values('5','Grains/Cereals','Breads, crackers, pasta, and cereal');
Insert into categories
values('6',	'Meat/Poultry','Prepared meats');
Insert into categories
values('7','Produce','Dried fruit and bean curd');
Insert into categories
values('8','Seafood','Seaweed and fish');