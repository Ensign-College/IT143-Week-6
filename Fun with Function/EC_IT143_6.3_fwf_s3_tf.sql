/*
EC_IT143_6.3_fwf_s3_lf.sql

Question:
How do I extract the first name from ContactName?

Ad hoc query:
Use CHARINDEX to find the first space in ContactName.
Use LEFT to return everything before that space.
*/

SELECT
    ContactName,
    CASE
        WHEN CHARINDEX(' ', ContactName) > 0
            THEN LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
        ELSE ContactName
    END AS FirstName
FROM dbo.t_w3_schools_customers;