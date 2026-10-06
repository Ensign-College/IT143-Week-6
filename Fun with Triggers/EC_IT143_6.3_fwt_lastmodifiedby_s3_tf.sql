/*
EC_IT143_6.3_fwt_lastmodifiedby_s3_tf.sql

Question:
How do I keep track of who last modified
a customer record?

Research:
SUSER_NAME() returns the current server user's
login name.

I need a LastModifiedBy column in the customer
table to store this value.

Source:
Microsoft Learn - SUSER_NAME (Transact-SQL)
Microsoft Learn - Add Columns to a Table
*/

-- Add the LastModifiedBy column if it does not already exist
IF COL_LENGTH(
    'dbo.t_w3_schools_customers',
    'LastModifiedBy'
) IS NULL
BEGIN
    ALTER TABLE dbo.t_w3_schools_customers
    ADD LastModifiedBy NVARCHAR(128);
END;
GO

-- Test the current server user
SELECT SUSER_NAME() AS CurrentServerUser;
GO

-- Check the new column
SELECT
    CustomerID,
    ContactName,
    LastModifiedBy
FROM dbo.t_w3_schools_customers;