/*
EC_IT143_6.3_fwf_last_s5_lf.sql

Purpose:
Create a user-defined scalar function
that extracts the last name from ContactName.

Author:
Timote Finau
*/

CREATE OR ALTER FUNCTION dbo.udf_GetLastName
(
    @ContactName NVARCHAR(100)
)
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @LastName NVARCHAR(100);

    IF CHARINDEX(' ', REVERSE(RTRIM(@ContactName))) > 0
        SET @LastName = RIGHT(
            RTRIM(@ContactName),
            CHARINDEX(' ', REVERSE(RTRIM(@ContactName))) - 1
        );
    ELSE
        SET @LastName = RTRIM(@ContactName);

    RETURN @LastName;
END;
GO

/*
Test the last-name UDF
*/

SELECT
    ContactName,
    dbo.udf_GetLastName(ContactName) AS LastName
FROM dbo.t_w3_schools_customers;