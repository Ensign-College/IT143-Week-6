/*
EC_IT143_6.3_fwf_last_s3_lf.sql

Question:
How do I extract the last name from ContactName?

Ad hoc query:
Use REVERSE and CHARINDEX to find the last space.
Use RIGHT to return everything after the last space.
*/

SELECT
    ContactName,
    CASE
        WHEN CHARINDEX(' ', REVERSE(RTRIM(ContactName))) > 0
            THEN RIGHT(
                RTRIM(ContactName),
                CHARINDEX(' ', REVERSE(RTRIM(ContactName))) - 1
            )
        ELSE RTRIM(ContactName)
    END AS LastName
FROM dbo.t_w3_schools_customers;
