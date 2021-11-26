const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];
const limit = process.argv[3] || 5;
// Store all potentially malicious values in an array.
const values = [`%${cohortName}%`, limit];

const qstring = `SELECT students.id, students.name, students.cohort_id FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE $1  LIMIT $2`;
pool.query(qstring, values)
.then(res => {
  console.log(res.rows);
})
.catch(err => console.error('query error', err.stack));