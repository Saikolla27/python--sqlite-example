-- Create Customers Table:
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

-- Create Orders Table:
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create Products Table:
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

-- Create Suppliers Table:
CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(50)
);

-- Create Product_Suppliers Table:
CREATE TABLE product_suppliers (
    product_id INT,
    supplier_id INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id),
    PRIMARY KEY (product_id, supplier_id)
);

-- Create Employees Table:
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

-- Create Departments Table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);


-- Insert Customers:
INSERT INTO customers (customer_id, customer_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

-- Insert Orders:
INSERT INTO orders (order_id, customer_id, product_name) VALUES
(1, 1, 'Laptop'),
(2, 1, 'Mouse'),
(3, 2, 'Keyboard');

-- Insert Products:
INSERT INTO products (product_id, product_name) VALUES
(1, 'Laptop'),
(2, 'Mouse'),
(3, 'Keyboard'),
(4, 'Monitor');

-- Insert Suppliers:
INSERT INTO suppliers (supplier_id, supplier_name) VALUES
(1, 'Supplier A'),
(2, 'Supplier B');

-- Insert Product_Suppliers:
INSERT INTO product_suppliers (product_id, supplier_id) VALUES
(1, 1),
(1, 2),
(2, 1);

-- Insert Employees:
INSERT INTO employees (employee_id, employee_name, manager_id) VALUES
(1, 'John', NULL),
(2, 'Jane', 1),
(3, 'Jack', 1),
(4, 'Jill', 2);

-- Insert Departments:
INSERT INTO departments (department_id, department_name) VALUES
(1, 'Sales'),
(2, 'HR');
