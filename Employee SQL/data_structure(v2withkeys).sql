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
	FOREIGN KEY (title_id) REFERENCES employees (emp_no),
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
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
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


DROP TABLE debt_manager;
CREATE TABLE debt_manager (
    dept_no VARCHAR(10) NOT NULL,
    emp_no INTEGER NOT NULL,
  	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no,dept_no)
	
);

SELECT * FROM dept_manager;
