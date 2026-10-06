/*
EC_IT143_6.3_fwf_last_s7_lf.sql

Purpose:
Perform a "0 results expected" test
for the last-name user-defined function.

If the function is working correctly,
this query should return 0 rows.
*/

WITH LastNameTest AS
(
    SELECT
        ContactName,

        CASE
            WHEN CHARINDEX(' ', REVERSE(RTRIM(ContactName))) > 0
            THEN RIGHT(
                RTRIM(ContactName),
                CHARINDEX(' ', REVERSE(RTRIM(ContactName))) - 1
            )
            ELSE RTRIM(ContactName)
        END AS AdHocLastName,

        dbo.udf_GetLastName(ContactName) AS UDFLastName

    FROM dbo.t_w3_schools_customers
)

SELECT *
FROM LastNameTest
WHERE AdHocLastName <> UDFLastName;