const mysql = require('mysql2');

const db = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: '##Mybabysarah88',
        database: 'company_db'
    },
    console.log('Connection to company_db established!')
);

module.exports = db