-- Q1. Create a New Database and  Table for Employees?
-- Ans -> 
CREATE TABLE company_db
(
employee_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department VARCHAR(50),
salary INT,
hire_date DATE
);

-- Q2. Insert Data into Employees Table?
-- Ans -> 
INSERT INTO company_db(employee_id, first_name, last_name, department, salary, hire_date)
VALUES (101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
	(102, 'Riya', ' Kapoor', 'Sales', 75000, '2019-03-22'),
	(103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
	(104, 'Neha', 'Verma', 'IT', 85000, '2021-09-11'),
	(105, 'Arjun', 'Singh', 'Finance', 60000, '2022-02-10');
    
-- Q3. Display All Employee Records Sorted by Salary (Lowest to Highest)?
-- Ans -> 
    SELECT* FROM company_db
    ORDER BY salary ASC;
    
-- Q4. Show Employees Sorted by Department (A–Z) and Salary (High → Low)?
-- Ans -> 
    SELECT * FROM company_db
    ORDER BY department ASC, salary DESC;

-- Q5. List All Employees in the IT Department, Ordered by Hire Date (Newest First)?
-- Ans ->     
    SELECT department, hire_date 
    FROM company_db
    WHERE department = 'IT'
    order by hire_date DESC;

-- Q6. Create and Populate a Sales Table? 
-- Ans -> 
    CREATE TABLE sales(
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount INT,
    sale_date DATE);

    INSERT INTO sales(customer_name, amount, sale_date)
    VALUES ('Aditi', 1500, '2024-08-01'),
    ('Rohan', 2200, '2024-08-03'),
    ('Aditi', 3500, '2024-09-05'),
    ('Meena', 2700, '2024-09-15'),
    ('Rohan',4500, '2024-09-25');

-- Q7. Display All Sales Records Sorted by Amount (Highest → Lowest)? 
-- Ans-> 
    SELECT * FROM sales
    ORDER BY amount DESC; 

-- Q8. Show All Sales Made by Customer “Aditi”? 
-- Ans - >
    SELECT * FROM sales
    WHERE customer_name = 'Aditi';
    
    


