/*
EC_IT143_6.3_fwf_s7_lf.sql

Purpose:
Perform a "0 results expected" test.

If the user-defined function is working correctly,
this query should return 0 rows.
*/

WITH FirstNameTest AS
(
    SELECT
        ContactName,

        CASE
            WHEN CHARINDEX(' ', ContactName) > 0
                THEN LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
            ELSE ContactName
        END AS AdHocFirstName,

        dbo.udf_GetFirstName(ContactName) AS UDFFirstName

    FROM dbo.t_w3_schools_customers
)

SELECT *
FROM FirstNameTest
WHERE AdHocFirstName <> UDFFirstName;