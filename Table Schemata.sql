--DATA ENGINEERING
---Creating table employees
CREATE TABLE employees (
	emp_no int not null,
	emp_title_id varchar(10) not null,
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex char(1) not null,
	hire_date date not null);
	
ALTER TABLE employees
ADD id SERIAL PRIMARY KEY;

ALTER TABLE employees
ADD CONSTRAINT unique_emp_no UNIQUE (emp_no)

---Adding Foreign key connected to table titles
ALTER TABLE employees
ADD CONSTRAINT fk_title_id
FOREIGN KEY (emp_title_id)
REFERENCES Titles(title_id)

---Creating table departments
CREATE TABLE departments (
	dept_no varchar(4) not null,
	dept_name varchar(30) not null);

ALTER TABLE departments
ADD id SERIAL PRIMARY KEY;

ALTER TABLE departments
ADD CONSTRAINT unique_dept_no UNIQUE (dept_no)

---Creating table dept_emp
CREATE TABLE dept_emp (
	emp_no int not null,
	dept_no varchar(4) not null);
	
ALTER TABLE dept_emp
ADD id SERIAL PRIMARY KEY;

---Adding Foreign key connected to table employees
ALTER TABLE dept_emp
ADD CONSTRAINT fk_emp_no
FOREIGN KEY (emp_no)
REFERENCES employees(emp_no);

---Adding Foreign key connected to table departments
ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_no
FOREIGN KEY (dept_no)
REFERENCES departments(dept_no);

---Creating table dept_manager
CREATE TABLE dept_manager (
	dept_no varchar(4) not null,
	emp_no int not null);
	
ALTER TABLE dept_manager
ADD id SERIAL PRIMARY KEY;

---Adding Foreign key connected to table employees
ALTER TABLE dept_manager
ADD CONSTRAINT fk_emp_no
FOREIGN KEY (emp_no)
REFERENCES employees(emp_no);

---Adding Foreign key connected to table departments
ALTER TABLE dept_manager
ADD CONSTRAINT fk_dept_no
FOREIGN KEY (dept_no)
REFERENCES departments(dept_no);


---Creating table Salaries
CREATE TABLE Salaries (
	emp_no int not null,
	salary int not null);

ALTER TABLE Salaries
ADD id SERIAL PRIMARY KEY;

---Adding Foreign key connected to table employees
ALTER TABLE Salaries
ADD CONSTRAINT fk_emp_no
FOREIGN KEY (emp_no)
REFERENCES employees(emp_no);

---Creating table Titles
CREATE TABLE Titles (
	title_id varchar(10) not null,
	title varchar(30) not null);

ALTER TABLE Titles
ADD id SERIAL PRIMARY KEY;

ALTER TABLE titles
ADD CONSTRAINT unique_title_id UNIQUE (title_id)