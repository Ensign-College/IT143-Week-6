/*
EC_IT143_6.3_fwf_s6_lf.sql

Purpose:
Compare the ad hoc query result with the
user-defined function result.
*/

/*
EC_IT143_6.3_fwf_s6_lf.sql

Purpose:
Compare the ad hoc query result to the
user-defined scalar function result.
The two results should match.
*/

SELECT
    ContactName,

    CASE
        WHEN CHARINDEX(' ', ContactName) > 0
            THEN LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
        ELSE ContactName
    END AS AdHocFirstName,

    dbo.udf_GetFirstName(ContactName) AS UDFFirstName

FROM dbo.t_w3_schools_customers;
