/*
EC_IT143_6.3_fwf_s5_lf.sql

Purpose:
Create a user-defined scalar function that extracts
the first name from ContactName.

Author:
Timote Finau
*/

CREATE OR ALTER FUNCTION dbo.udf_GetFirstName
(
    @ContactName NVARCHAR(100)
)
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @FirstName NVARCHAR(100);

    IF CHARINDEX(' ', @ContactName) > 0
        SET @FirstName =
            LEFT(@ContactName, CHARINDEX(' ', @ContactName) - 1);
    ELSE
        SET @FirstName = @ContactName;

    RETURN @FirstName;
END;
GO

SELECT
    ContactName,
    dbo.udf_GetFirstName(ContactName) AS FirstName
FROM dbo.t_w3_schools_customers;

