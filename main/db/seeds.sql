USE company_db

INSERT INTO departments (department_id, department_name)
VALUES 
    (1, 'Sales'),
    (2, 'Engineering'),
    (3, 'Finance'),
    (4, 'Legal'),

INSERT INTO roles (role_id, role_title, salary, department_id)
VALUES
    (1, 'Sales Lead', 40000, 1),
    (2, 'Salesperson', 75000, 1),
    (3, 'Lead Engineer', 55000, 2),
    (4, 'Software Engineer', 40000, 2),
    (5, 'Account Manager', 45000, 3),
    (6, 'Accountant', 65000, 3),
    (7, 'Legal Team Lead', 85000, 4),
    (8, 'Lawyer', 110000, 4),

INSERT INTO employees (employee_id, first_name, last_name, role_id)
VALUES
    (1, 'Mike', 'Chan', 1),
    (1, 'Ashley', 'Rodriguez', 6),
    (1, 'Kevin', 'Tupik', 8),
    (1, 'Kunal', 'Singh', 4),
    (1, 'Malia', 'Brown', 5),
    (1, 'Sarah', 'Lourd', 2),
    (1, 'Tom', 'Allen', 3),
    (1, 'Morgan', 'Henning', 7);