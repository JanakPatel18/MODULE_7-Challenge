--  Deliverable 1

-- Retrieve the (emp_no), (first_name), and (last_name) from the Employees table
CREATE TABLE employees (
	 emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);

SELECT * FROM employees

SELECT emp_no, first_name, last_name
FROM employees

-- Retrieve the (title), (from_date), and (to_date) from the Titles table
CREATE TABLE titles (
	 emp_no INT NOT NULL,
	 title VARCHAR NOT NULL,
	 from_date DATE NOT NULL,
	 to_date DATE NOT NULL,
	 FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM titles

SELECT title, from_date, to_date
FROM titles

-- Create new table for retiring employees
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
on t.emp_no = e.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;
-- Check the table
SELECT * FROM retirement_titles;

SELECT retirement_titles.emp_no,
	retirement_titles.first_name,
	retirement_titles.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
FROM retirement_titles
LEFT JOIN titles
ON retirement_titles.emp_no = titles.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;

SELECT * FROM unique_titles;

SELECT COUNT (emp_no) as count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles;

--  Deliverable 2

SELECT DISTINCT ON (emp.emp_no) emp.emp_no, emp.first_name, emp.last_name, emp.birth_date,
			demp.from_date, demp.to_date,
			t.title
INTO mentorship_eligibility
FROM employees as emp
INNER JOIN dept_employees as demp
ON emp.emp_no = demp.emp_no
INNER JOIN titles as t
ON emp.emp_no = t.emp_no
WHERE (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND demp.to_date = ('9999-01-01')
ORDER BY emp_no;

SELECT * FROM mentorship_eligibility;

DROP TABLE mentorship_eligibility CASCADE;