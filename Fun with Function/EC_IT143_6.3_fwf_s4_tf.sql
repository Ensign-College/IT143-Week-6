/*
EC_IT143_6.3_fwf_s4_lf.sql

Question:
How do I extract the first name from ContactName?

Research:
CHARINDEX can be used to find the position of the first space.
LEFT can be used to return the characters before that space.

Source:
https://learn.microsoft.com/en-us/sql/t-sql/functions/charindex-transact-sql
https://learn.microsoft.com/en-us/sql/t-sql/functions/left-transact-sql

Test:
*/

SELECT
    ContactName,
    CASE
        WHEN CHARINDEX(' ', ContactName) > 0
            THEN LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
        ELSE ContactName
    END AS FirstName
FROM dbo.t_w3_schools_customers;