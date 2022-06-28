SELECT * 
FROM departments;

SELECT *
FROM departments
JOIN roles ON departments.department_id = roles.department_id;

SELECT * 
FROM departments
JOIN roles ON departments.department_id = roles.department_id
JOIN employees ON roles.role_id = employees.role_id;