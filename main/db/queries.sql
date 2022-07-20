
SELECT * 
FROM departments;

SELECT role_id AS id, role_title, department_name, salary 
FROM departments 
JOIN roles ON roles.department_id = departments.department_id;


SELECT emp.employee_id AS id, emp.first_name, emp.last_name, role_title, department_name, emp.manager_id, man.first_name AS manager_first_name, man.
last_name AS manager_last_name
FROM employees emp
LEFT JOIN roles ON emp.role_id = roles.role_id
LEFT JOIN departments ON roles.department_id= departments.department_id
LEFT JOIN employees man
ON man.employee_id = emp.manager_id;

INSERT INTO departments (department_name)
    VALUES 
        (?);

INSERT INTO roles (role_title, salary, department_name)
    VALUES 
        (?,?);

INSERT INTO employees (first_name, last_name, role_title, manager_id)
    VALUES 
        (?,?,?,?);

UPDATE employees
SET role_id = ?
WHERE employee_id = ?

SELECT employee_id, first_name, last_name, departments.department_name
FROM company_db.employees
JOIN company_db.roles ON employees.role_id = roles.role_id
JOIN company_db.departments ON roles.department_id = departments.department_id
WHERE departments.department_id = ?;

SELECT emp.employee_id AS id, emp.first_name, emp.last_name, emp.manager_id, man.first_name AS manager_first_name, man.last_name AS manager_last_name
FROM employees emp
LEFT JOIN employees man
ON man.employee_id = emp.manager_id
WHERE emp.manager_id = ?;