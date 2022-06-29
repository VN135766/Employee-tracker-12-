SELECT * 
FROM departments;

SELECT *
FROM departments
JOIN roles ON departments.department_id = roles.department_id;

SELECT * 
FROM departments
JOIN roles ON departments.department_id = roles.department_id
JOIN employees ON roles.role_id = employees.role_id;

INSERT INTO departments (department_id, department_name)
    VALUES 
        (?,?);

INSERT INTO roles (role_id, role_title, salary, department_name)
    VALUES 
        (?,?,?);

INSERT INTO roles (employee_id, first_name, last_name, role_title, manager_id)
    VALUES 
        (?,?,?,?);

UPDATE employees
SET role_id = ?
WHERE employee_id = ?