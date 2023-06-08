/* All employees who report to ‘Andrew Fuller’ */
SELECT *FROM employees
where reports_to=(Select employee_id from employees where concat(Employees.first_name ,' ', Employees.last_name)='Andrew Fuller');