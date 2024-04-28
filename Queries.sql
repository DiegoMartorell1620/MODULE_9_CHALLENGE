--DATA ANALYSIS
---List the employee number, last name, first name, sex, and salary of each employee
Select a.emp_no,
a.last_name,
a.first_name,
a.sex,
b.salary
from employees a
inner join salaries b on a.emp_no=b.emp_no;

---List the first name, last name, and hire date for the employees who were hired in 1986

Select first_name,
last_name,
hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

---List the manager of each department along with their department number, department name, employee number, last name, and first name
Select a.emp_no,
a.dept_no,
b.dept_name,
c.first_name,
c.last_name
from dept_manager a
inner join departments b on a.dept_no=b.dept_no
inner join employees c on a.emp_no=c.emp_no;

---List the department number for each employee along with that employee’s employee number, last name, first name, and department name
Select a.emp_no,
a.dept_no,
b.dept_name,
c.first_name,
c.last_name
from dept_emp a
inner join departments b on a.dept_no=b.dept_no
inner join employees c on a.emp_no=c.emp_no;

---List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
SELECT first_name, last_name, sex
FROM employees
WHERE first_name LIKE 'Hercules%'
AND last_name LIKE 'B%';

---List each employee in the Sales department, including their employee number, last name, and first name
---I had to assume that employees meant employees and managers since technically managers are employees too
Select a.emp_no,c.first_name,c.last_name from (
	Select emp_no,
dept_no from dept_emp
UNION
Select emp_no,
dept_no from dept_manager) as a inner join 
departments b on a.dept_no=b.dept_no
inner join employees c on a.emp_no=c.emp_no
where b.dept_name='Sales';
 
---List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
---I had to assume that employees meant employees and managers since technically managers are employees too
Select a.emp_no,b.dept_name,c.first_name,c.last_name from (
	Select emp_no,
dept_no from dept_emp
UNION
Select emp_no,
dept_no from dept_manager) as a inner join 
departments b on a.dept_no=b.dept_no
inner join employees c on a.emp_no=c.emp_no
where b.dept_name='Sales'or b.dept_name='Development'

---List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name
SELECT last_name, COUNT(last_name) AS count_last_name
FROM employees
GROUP BY last_name
ORDER BY count_last_name DESC