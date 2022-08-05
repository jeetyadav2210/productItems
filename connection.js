var mysql = require('mysql')
var mysqlconnection = mysql.createConnection({
    user: "root",
    host: "localhost",
    password: "Password123#@!",
    database: "AssignmentTask"
})



mysqlconnection.connect((err) => {
    if (err) {
        console.log("server connection failled", err);
    } else {
        console.log("mysql server connacted");
    }
})

module.exports = mysqlconnection




