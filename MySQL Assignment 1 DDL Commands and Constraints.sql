CREATE DATABASE employee;
USE employee;
CREATE TABLE department(
department_id INT PRIMARY KEY,
department_name VARCHAR(100) NOT NULL UNIQUE);
select * from department;
CREATE TABLE location(
location_id INT AUTO_INCREMENT PRIMARY KEY,
location VARCHAR(30) NOT NULL UNIQUE);
SELECT * FROM location;
CREATE TABLE employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
gender ENUM('M','F'),
age INT CHECK (age >= 18),
hire_date DATE DEFAULT(CURRENT_DATE),
designation VARCHAR(100),
department_id INT,
FOREIGN KEY(department_id) REFERENCES department(department_id),
location_id INT,
FOREIGN KEY(location_id) REFERENCES location(location_id),
salary DECIMAL(10,2)
);
