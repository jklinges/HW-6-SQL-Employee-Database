DROP TABLE DEPARTMENTS;
CREATE TABLE DEPARTMENTS (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(30) NOT NULL
);

DROP TABLE TITLES;
CREATE TABLE TITLES (
    title_id INTEGER NOT NULL,
    title VARCHAR(30) NOT NULL
);

DROP TABLE EMPLOYEES;
CREATE TABLE EMPLOYEES (
    emp_no INTEGER NOT NULL,
	emp_title_id INTEGER NOT NULL,
    birth_date VARCHAR(10) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    hire_date VARCHAR(10) NOT NULL
);

DROP TABLE SALARIES;
CREATE TABLE SALARIES (
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL
    
);

DROP TABLE DEPT_EMP;
CREATE TABLE DEPT_EMP (
    emp_no INTEGER NOT NULL,
	dept_no VARCHAR(10) NOT NULL
    
);


DROP TABLE DEPT_MANAGER;
CREATE TABLE DEPT_MANAGER (
    dept_no VARCHAR(10) NOT NULL,
    emp_no INTEGER NOT NULL
    
);

Query returned successfully in 64 msec.
