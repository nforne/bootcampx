const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});

const qstring = `SELECT students.id, students.name, students.cohort_id FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE '%${process.argv[2]}%'  LIMIT ${process.argv[3] || 5}`;
pool.query(qstring)
.then(res => {
  console.log(res.rows);
})
.catch(err => console.error('query error', err.stack));