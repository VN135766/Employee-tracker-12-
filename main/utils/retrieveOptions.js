const db = require('../config/connection')

const retrieveAllDepartments = async () => {
    let depts = await db.promise().query(`SELECT * FROM departments`);
    let deptsArr = depts[0].map(({ department_id, department_name }) => ({
        name: `${department_name}`,
        value: department_id
    }));
    return deptsArr
}

const retrieveAllRoles = async () => {
    let roles = await db.promise().query(`SELECT * FROM roles`);
    let rolesArr = roles[0].map(({ role_id, role_title }) => ({
        name: `${role_title}`,
        value: role_id
    }));
    return rolesArr
}

const retrieveAllTheEmployees = async () => {
    let employees = await db.promise().query(`SELECT * FROM employees`);
    let employeesArr = employees[0].map(({ employee_id, first_name, last_name }) => ({
        name: `${first_name} ${last_name}`,
        value: employee_id
    }));
    return employeesArr
}

const retrieveAllManagers = async () => {
    let managers = await db.promise().query(`SELECT * FROM company_db.employees WHERE manager_id IS NULL;`);
    let managersArr = managers[0].map(({ employee_id, first_name, last_name }) => ({
        name: `${first_name} ${last_name}`,
        value: employee_id
    }));
    return managersArr
}

module.exports = { retrieveAllDepartments, retrieveAllRoles, retrieveAllTheEmployees, retrieveAllManagers };