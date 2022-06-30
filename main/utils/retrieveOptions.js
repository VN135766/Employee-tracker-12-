const db = require('../config/connection')

// const retrieveDepartments = () => {
//     return new Promise((resolve, reject) => {
//         db.query(`SELECT department_name FROM departments;`, (err, response) => {
//             if (err) {
//                 reject(err);
//             } else {
//                 resolve(response.map(department => department.department_name))
//             }
//         })
//     })
// }

// const departments = retrieveDepartments().then(data => {return data}).catch('there is an error')
// console.log(departments)

// console.log(retrieveDepartments().then(data => {return data}))
console.log(retrieveDepartments());
const retrieveDepartments = () => {
    return new Promise((resolve, reject) => {
        db.query(`SELECT department_name FROM departments;`, (err, response) => {
            if (err) {
                reject(err);
            } else {
                resolve(response.map(department => department.department_name))
            }
        })
    })
}

const departmentList = retrieveDepartments().then(data => console.log(data)).catch('found an error')

module.exports = departmentList
