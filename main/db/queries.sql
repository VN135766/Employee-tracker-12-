SELECT * 
FROM departments;

SELECT role_id AS id, role_title, department_name, salary 
FROM departments 
JOIN roles ON roles.department_id = departments.department_id;

SELECT * 
FROM departments
JOIN roles ON departments.department_id = roles.department_id
JOIN employees ON roles.role_id = employees.role_id;

INSERT INTO departments (department_name)
    VALUES 
        (?);

INSERT INTO roles (role_title, salary, department_name)
    VALUES 
        (?,?);

INSERT INTO roles (first_name, last_name, role_title, manager_id)
    VALUES 
        (?,?,?,?);

UPDATE employees
SET role_id = ?
WHERE employee_id = ?