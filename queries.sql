queries.sql

-- Creating Tables for PH-Employee

CREATE TABLE departments(
    dept_no VARCHAR(4) NOT NULL, 
    dept_name VARCHAR(40) NOT NULL, 
    PRIMARY KEY (dept_no), 
    UNIQUE (dept_name)
    

); 

CREATE TABLE employees(
    emp_no INT NOT NULL, 
    birth_date DATE NOT NULL, 
    first_name VARCHAR(100) NOT NULL, 
    last_name VARCHAR(100) NOT NULL, 
    gender VARCHAR(100) NOT NULL, 
    hire_date DATE NOT NULL, 
    PRIMARY KEY (emp_no)

);

CREATE TABLE dept_manager(
    dept_no VARCHAR(4) NOT NULL, 
    emp_no INT NOT NULL, 
    from_date DATE NOT NULL, 
    to_date DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no), 
    PRIMARY KEY (emp_no, dept_no)

);

CREATE TABLE salaries(
    emp_no INT NOT NULL, 
    salary INT NOT NULL, 
    from_date DATE NOT NULL, 
    to_date DATE NOT NULL, 
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
    PRIMARY KEY (emp_no)

);


CREATE TABLE dept_emp(
    dept_no VARCHAR NOT NULL, 
    emp_no INT NOT NULL, 
    from_date DATE NOT NULL, 
    to_date DATE NOT NULL, 
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no), 
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
    PRIMARY KEY (dept_no, emp_no)
); 


CREATE TABLE titles(
    emp_no INT NOT NULL, 
    title VARCHAR NOT NULL, 
    from_date DATE NOT NULL, 
    to_date DATE NOT NULL, 
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
    PRIMARY KEY (emp_no)
); 


SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM employees;

SELECT first_name, last_name FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';


SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';



-- Retirement Eligibility 

SELECT first_name, last_name FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31'); 

-- Number of employees retiring

SELECT COUNT(first_name) FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31'); 




SELECT first_name, last_name 
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31'); 


SELECT * FROM retirement_info;