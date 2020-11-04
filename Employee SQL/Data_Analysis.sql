    -- List the following details of each employee:
	-- employee number, last name, first name, sex, and salary -
	
	SELECT EMPLOYEES.emp_no,
		EMPLOYEES.last_name,
		EMPLOYEES.first_name,
		EMPLOYEES.sex,
		SALARIES.salary
	FROM EMPLOYEES
	INNER JOIN SALARIES
	ON SALARIES.emp_no = EMPLOYEES.emp_no;
	
	-- 	List first name, last name, and hire date for employees who were hired in 1986.
	
	SELECT EMPLOYEES.emp_no,
		EMPLOYEES.last_name,
		EMPLOYEES.first_name,
		EMPLOYEES.hire_date
	FROM EMPLOYEES
	INNER JOIN SALARIES
	ON SALARIES.emp_no = EMPLOYEES.emp_no
	WHERE EMPLOYEES.hire_date LIKE '1986%';
	

	-- List the manager of each department with the following information: --
	-- department number, department name, the manager's employee number, --
	-- last name, first name, 
		
	SELECT DISTINCT DEPT_MANAGER.dept_no,
		DEPARTMENTS.dept_name,
		DEPT_MANAGER.emp_no,
		EMPLOYEES.last_name,
		EMPLOYEES.first_name
	FROM EMPLOYEES
	INNER JOIN DEPT_MANAGER
	ON EMPLOYEES.emp_no = DEPT_MANAGER.emp_no
	INNER JOIN DEPARTMENTS
	ON DEPT_MANAGER.dept_no = DEPARTMENTS.dept_no
	ORDER BY emp_no;
	
	-- List the department of each employee with the following information: --
	-- employee number, last name, first name, and department name --
	
	SELECT DISTINCT DEPT_EMP.emp_no,
		EMPLOYEES.first_name,
		EMPLOYEES.last_name,
		DEPARTMENTS.dept_name  
	FROM DEPT_EMP
	JOIN EMPLOYEES
	ON DEPT_EMP.emp_no = EMPLOYEES.emp_no
	JOIN DEPARTMENTS
	ON  DEPT_EMP.dept_no = DEPARTMENTS.dept_no
	ORDER BY emp_no;
	
	-- List first name, last name and sex for all employees whose first name is "Hercules" and last names begin with "B."
 
	SELECT EMPLOYEES.first_name,
		EMPLOYEES.last_name,
		EMPLOYEES.sex
	FROM EMPLOYEES
	WHERE EMPLOYEES.first_name LIKE 'Hercules' 
	AND EMPLOYEES.last_name LIKE 'B%';
	
	
	-- List all employees in the Sales departments, including their: --
	-- employee number, last name, first name, and department name --
	SELECT DISTINCT EMPLOYEES.emp_no,
		EMPLOYEES.last_name,
		EMPLOYEES.first_name,
		DEPARTMENTS.dept_no
	FROM EMPLOYEES
	JOIN DEPT_EMP
	ON EMPLOYEES.emp_no = DEPT_EMP.emp_no
	JOIN DEPARTMENTS
	ON DEPARTMENTS.dept_no = DEPT_EMP.dept_no
	WHERE DEPARTMENTS.dept_name = 'Sales'
	ORDER BY emp_no;
	
	-- List all employees in the Sales and Development departments, including -- 
	-- their employee number, last name, first name, and department name --
	SELECT DISTINCT EMPLOYEES.emp_no,
		EMPLOYEES.last_name,
		EMPLOYEES.first_name,
		DEPARTMENTS.dept_name
	FROM EMPLOYEES
	JOIN DEPT_EMP
	ON EMPLOYEES.emp_no = DEPT_EMP.emp_no
	JOIN DEPARTMENTS
	ON DEPARTMENTS.dept_no = DEPT_EMP.dept_no
	WHERE DEPARTMENTS.dept_name = 'Sales'
	OR DEPARTMENTS.dept_name = 'Development'
	ORDER BY emp_no;
	
	-- In descending order, list the frequency count of employee last names --
	
	SELECT EMPLOYEES.last_name,
	COUNT(EMPLOYEES.emp_no)
	FROM EMPLOYEES
	GROUP BY EMPLOYEES.last_name
	ORDER BY COUNT(EMPLOYEES.emp_no)
	DESC;

