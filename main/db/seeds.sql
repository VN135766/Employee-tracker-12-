USE company_db

INSERT INTO departments (department_name)
VALUES 
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal');

INSERT INTO roles (role_title, salary, department_id)
VALUES
    ('Sales Lead', 40000, 1),
    ('Salesperson', 75000, 1),
    ('Lead Engineer', 55000, 2),
    ('Software Engineer', 40000, 2),
    ('Account Manager', 45000, 3),
    ('Accountant', 65000, 3),
    ('Legal Team Lead', 85000, 4),
    ('Lawyer', 110000, 4);

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
    ('Mike', 'Chan', 1, null),
    ('Ashley', 'Rodriguez', 6 , null),
    ('Kevin', 'Tupik', 8, null),
    ('Kunal', 'Singh', 4, null),
    ('Malia', 'Brown', 5, 1),
    ('Sarah', 'Lourd', 2, 3),
    ('Tom', 'Allen', 3, 4),
    ('Morgan', 'Henning', 7, 4);