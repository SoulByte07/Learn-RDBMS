-- Create tables for inventory management system
CREATE TABLE catagory (
    catagory_id INTEGER PRIMARY KEY AUTOINCREMENT,
    catagory_name VARCHAR(255) NOT NULL
);

-- Create product table with foreign key reference to catagory
CREATE TABLE product (
    product_id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_name VARCHAR(255) NOT NULL,
    catagory_id INTEGER,
    price DECIMAL(10, 2) NOT NULL,
    stock INTEGER NOT NULL,
    FOREIGN KEY (catagory_id) REFERENCES catagory(catagory_id)
);

