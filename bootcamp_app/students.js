const { Pool } = require("pg");

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

const cohort_name = process.argv[2];
const limit = process.argv[3];

pool
  .query(
    `
SELECT students.id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name Like '%${cohort_name}%'
LIMIT ${limit};
`
  )
  .then((res) => {
    console.log(res);
  })
  .catch((err) => console.error("query error", err.stack));
