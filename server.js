const express = require('express');
const mysql = require('mysql2');

const PORT = 3001;
const app = express();

app.use(express.urlencoded({ extended: false}));
app.use(express.json());

const db = mysql.createConnection(
    {
        host:'localhost',
        user:'root',
        password:'##Mybabysarah88',
        database:'company_db'
    },
    console.log('Connection to company_db has been established')
);

app.listen(PORT, () => {
    console.log(`Server successfully running on port ${PORT}`)
})