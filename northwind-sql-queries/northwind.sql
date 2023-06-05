/* This is an SQL File
*/
CREATE TABLE categories (
    category_id int NOT NULL,
    category_name varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    PRIMARY KEY (category_id)
); /* creating categories table */
CREATE TABLE customers (
    customer_id int NOT NULL,
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
    PRIMARY KEY (category_id)
); /* creating customers table */
CREATE TABLE regions (
    region_id int NOT NULL,
    region_description varchar(255) NOT NULL,
    PRIMARY KEY (region_id)
); /* creating regions table */
