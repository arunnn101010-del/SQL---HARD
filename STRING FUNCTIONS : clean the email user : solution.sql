-- # SQL String Functions — Hard Problems

-- Promblem :-- Clean Username

-- Input Table: Employees

-- | employee_id | name |   email |
-- | 1           | Arun |   Arun.Minkire@gmail.com |
-- | 2           | Ravi |   Ravi.Kumar@yahoo.com |
-- | 3           | Aman |   Aman.Sharma@gmail.com |
-- | 4           | Neha |   Neha.Reddy@outlook.com |
-- | 5           | Priya |  Priya.Singh@gmail.com |

--  Problem Explantion :-- 
-- Clean the email username:
-- - Extract the part before `@`
-- - Replace `.` with `_`
-- - Convert it to lowercase

-- Example: `Arun.Minkire@gmail.com` → `arun_minkire`

CODE :-- 
SELECT
    employee_id,
    email,
    LOWER(
        REPLACE(
            LEFT(email, CHARINDEX('@', email) - 1),
            '.',
            '_'
        )
    ) AS clean_username
FROM Employees;


-- OUTPUT :-- 
| employee_id | email                                                   | clean_username |
| 1           | [Arun.Minkire@gmail.com](mailto:Arun.Minkire@gmail.com) | arun_minkire   |
| 2           | [Ravi.Kumar@yahoo.com](mailto:Ravi.Kumar@yahoo.com)     | ravi_kumar     |
| 3           | [Aman.Sharma@gmail.com](mailto:Aman.Sharma@gmail.com)   | aman_sharma    |
| 4           | [Neha.Reddy@outlook.com](mailto:Neha.Reddy@outlook.com) | neha_reddy     |
| 5           | [Priya.Singh@gmail.com](mailto:Priya.Singh@gmail.com)   | priya_singh    |
