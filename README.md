# MODULE_9_CHALLENGE

In this challenge the following analysis will take place:

Data Modeling 
Entity Relationship Diagram is included or table schemas provided for all tables (10 points)

Data Engineering 
All required columns are defined for each table 
Columns are set to the correct data type 
Primary Keys set for each table 
Correctly references related tables 
Tables are correctly related using Foreign Keys 
Correctly uses NOT NULL condition on necessary columns 
Accurately defines value length for columns 

Data Analysis
List the employee number, last name, first name, sex, and salary of each employee 
List the first name, last name, and hire date for the employees who were hired in 1986 
List the manager of each department along with their department number, department name, employee number, last name, and first name 
List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
List each employee in the Sales department, including their employee number, last name, and first name 
List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 

Sources:

The methodology on how to adding constraints and creating foreign keys based on that was obtained from Xpert Learning Assistant. 

"ALTER TABLE employees
ADD CONSTRAINT unique_emp_no UNIQUE (emp_no)

ALTER TABLE dept_emp
ADD CONSTRAINT fk_emp_no
FOREIGN KEY (emp_no)
REFERENCES employees(emp_no)"
