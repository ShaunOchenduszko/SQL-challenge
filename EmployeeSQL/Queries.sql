--Data Analysis
--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary FROM "Employees" AS emp
INNER JOIN "Salaries" AS sal ON emp.emp_no = sal.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT emp.first_name, emp.last_name, emp.hire_date FROM "Employees" AS emp
WHERE emp.hire_date LIKE '%1986';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT man.dept_no, dep.dept_name, man.emp_no, emp.last_name, emp.first_name FROM "Dept_Manager" AS man
INNER JOIN "Employees" AS emp ON man.emp_no = emp.emp_no
INNER JOIN "Departments" AS dep ON man.dept_no = dep."DeptID";

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dep_emp.dept_no, emp.emp_no, emp.last_name, emp.first_name, dep.dept_name from "Dept_Emp" AS dep_emp
INNER JOIN "Employees" AS emp ON dep_emp.emp_no = emp.emp_no
INNER JOIN "Departments" AS dep ON dep_emp.dept_no = dep."DeptID";

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM "Employees" AS emp
WHERE emp.first_name LIKE 'Hercules' AND emp.last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name from "Dept_Emp" AS dep_emp
INNER JOIN "Employees" AS emp ON dep_emp.emp_no = emp.emp_no
INNER JOIN "Departments" AS dep ON dep_emp.dept_no = dep."DeptID"
WHERE dep.dept_name LIKE 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name from "Dept_Emp" AS dep_emp
INNER JOIN "Employees" AS emp ON dep_emp.emp_no = emp.emp_no
INNER JOIN "Departments" AS dep ON dep_emp.dept_no = dep."DeptID"
WHERE dep.dept_name LIKE 'Sales' OR dep.dept_name LIKE 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT emp.last_name, COUNT(emp.last_name) FROM "Employees" AS emp
GROUP BY emp.last_name
ORDER BY COUNT(emp.last_name) DESC;

--Epilogue
SELECT * FROM "Employees" AS emp
WHERE emp_no = '499942'

