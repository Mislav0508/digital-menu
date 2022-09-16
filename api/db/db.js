const mysql = require('mysql2');

let db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  database: process.env.DB_NAME,
  password: process.env.DB_PASSWORD
})

db.connect((err) => {
  if(err) {
    console.log("Database connection failed", err);
  } else {
    console.log("Connected to database.");
  }
})

module.exports = db