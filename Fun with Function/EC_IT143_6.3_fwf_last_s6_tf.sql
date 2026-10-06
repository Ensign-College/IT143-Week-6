/*
EC_IT143_6.3_fwf_last_s6_lf.sql

Purpose:
Compare the ad hoc last-name result with the
user-defined scalar function result.

Both results should match.
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
    END AS AdHocLastName,

    dbo.udf_GetLastName(ContactName) AS UDFLastName

FROM dbo.t_w3_schools_customers;