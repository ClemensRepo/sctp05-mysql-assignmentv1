INSERT INTO Companies (name, descriptions) VALUES 
('XYZ Marketing Ltd', 'A company that sells all household products with 20++ outlets in Singapore'),
('NTUC', 'Co-operative that sells everything you need in your household with over 50 outlets in Singapore'),
('CS, Cold Storage brand under DFI that retails household goods and products with a sizeable presence in Singapore');

INSERT INTO Customers (first_name, last_name, rating, company_id) VALUES
('Sam','Toh',5,1),
('Winnie', 'Toh',3,2),
('Siew Lin','Kwok',)

INSERT INTO Departments (name) VALUES
('Procurement'),
('Sales'),
('Delivery');

-- Inserting data into Employees
INSERT INTO Employees (first_name, last_name, department_id) VALUES
('Robert', 'Brown', 1),
('Emily', 'Davis', 1),
('Michael', 'Wilson', 2);

-- Inserting data into Products
INSERT INTO Products (name, description) VALUES
('Investment Plan A', 'Comprehensive investment plan for long-term growth'),
('Retirement Fund B', 'Retirement fund with a focus on stability and steady income'),
('Equity Package C', 'Diverse equity package for aggressive growth');

-- Inserting data into Sales
INSERT INTO Sales (product_id, employee_id, customer_id, quantity, sale_date) VALUES
(1, 1, 1, 10, '2024-01-15'),
(2, 1, 2, 5, '2024-01-20'),
(3, 2, 3, 15, '2024-01-25');

-- Inserting data into EmployeeCustomer
INSERT INTO EmployeeCustomer (employee_id, customer_id) VALUES
(1, 1),
(2, 2),
(1, 3);

-- Inserting data into EmployeeProduct
INSERT INTO EmployeeProduct (employee_id, product_id) VALUES
(1, 1),
(1, 2),
(2, 3);