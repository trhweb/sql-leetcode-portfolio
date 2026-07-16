# 1378. Replace Employee ID With The Unique Identifier

## Problem
Write a query to show each employee's `unique_id` and `name`.

- If an employee does not have a unique ID, return `NULL` for `unique_id`.

## SQL Solution

```sql
/* Write your T-SQL query statement below */

SELECT
    EU.unique_id,
    EE.name
FROM Employees AS EE
LEFT JOIN EmployeeUNI AS EU
    ON EE.id = EU.id;
```

## Explanation

- `Employees` is the main table containing all employees.
- `EmployeeUNI` stores each employee's unique identifier.
- `LEFT JOIN` returns every employee, even if there is no matching record in `EmployeeUNI`.
- When there is no matching `unique_id`, SQL returns `NULL`, which satisfies the problem requirements.

## Concepts Used

- `SELECT`
- `LEFT JOIN`
- Table Alias (`EE`, `EU`)

## Difficulty

Easy
