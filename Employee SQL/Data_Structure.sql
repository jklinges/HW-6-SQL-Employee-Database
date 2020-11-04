-- Note, departments and titles have only primary keys and none of the columns refer to any other tables, so they are imported first.
-- Employees table has 1 foreign key that refers to Titles table. 
-- Since Titles table already has the rows from previous step, its safe to import the Employees table.
---Salaries has a foreign key that refers to Employees table which is already populated with data in previous step, so its safe to import data into Salaries table
-- Both Dept_Emp and Dept_Manager have foreign keys referring to previous Employees and Departments tables.

DROP TABLE departments;
CREATE TABLE departments (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(20) NOT NULL,
	PRIMARY KEY (dept_no)
	
);

SELECT * FROM departments;

DROP TABLE titles;
CREATE TABLE titles (
    title_id INTEGER NOT NULL,
    title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id,title)
);

SELECT * FROM titles;

DROP TABLE employees;
CREATE TABLE employees (
    emp_no INTEGER NOT NULL,
	emp_title_id INTEGER NOT NULL,
    birth_date VARCHAR(10) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    hire_date VARCHAR(10) NOT NULL,
	PRIMARY KEY (emp_no)
	
);
	
SELECT * FROM employees; 


DROP TABLE salaries;
CREATE TABLE salaries (
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
	    
);

SELECT * FROM salaries; 

DROP TABLE dept_emp;
CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no,dept_no)
	
);

SELECT * FROM dept_emp;


DROP TABLE dept_manager;
CREATE TABLE dept_manager (
    dept_no VARCHAR(10) NOT NULL,
    emp_no INTEGER NOT NULL,
  	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no,dept_no)
	
);

SELECT * FROM dept_manager;
