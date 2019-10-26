--1 List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
JOIN salaries AS s
ON s.emp_no = e.emp_no;

--2. List employees who were hired in 1986.

SELECT e.first_name, e.last_name, e.hire_date FROM employees AS e
WHERE hire_date LIKE '1986%';

--3. List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dman.dept_no, d.dept_name, dman.emp_no, e.first_name, e.last_name, dman.from_date, dman.to_date
FROM dept_manager dman 
JOIN employees e
ON dman.emp_no = e.emp_no
JOIN departments d
ON dman.dept_no = d.dept_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d 
ON de.dept_no = d.dept_no;

--5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name='Hercules'
AND last_name LIKE'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d 
ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, 
--and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d 
ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR dept_name='Development';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) 
FROM employees
GROUP BY last_name
ORDER BY count DESC;





