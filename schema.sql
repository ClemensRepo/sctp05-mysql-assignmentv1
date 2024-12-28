-- SQL Schema for Retail Apparel Company
CREATE DATABASE crm;

USE crm;

-- Creating Companies Table
CREATE TABLE Companies (
    company_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR2
);

-- Creating Customers Table
CREATE TABLE Customers (
    customer_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    rating INT UNSIGNED,
    company_id INT UNSIGNED,
    FOREIGN KEY (company_id) REFERENCES Companies(company_id)
);

-- Creating Departments Table
CREATE TABLE Departments (
    department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Creating Employees Table
CREATE TABLE Employees (
    employee_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    department_id INT UNSIGNED,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Creating Products Table
CREATE TABLE Products (
    product_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR2
);

-- Creating Sales Table
CREATE TABLE Sales (
    sale_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    product_id INT UNSIGNED,
    employee_id INT UNSIGNED,
    customer_id INT UNSIGNED,
    quantity INT UNSIGNED,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Creating EmployeeCustomer Table PIVOT TABLE (Many-to-Many)
CREATE TABLE EmployeeCustomer (
    employee_id INT UNSIGNED,
    customer_id INT UNSIGNED,
    PRIMARY KEY (employee_id, customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Creating EmployeeProduct Table Table PIVOT TABLE (Many-to-Many)
CREATE TABLE EmployeeProduct (
    employee_id INT UNSIGNED,
    product_id INT UNSIGNED,
    PRIMARY KEY (employee_id, product_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);