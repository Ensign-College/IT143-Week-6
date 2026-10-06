/*
EC_IT143_6.3_fwt_s3_lf.sql

Question:
How do I keep track of when a customer record was last modified?

Research:
I can add a LastModifiedDate column to the customer table.
An AFTER UPDATE trigger can automatically update this value
when a customer record is changed.

Source:
Microsoft Learn - CREATE TRIGGER (Transact-SQL)
*/

IF COL_LENGTH('dbo.t_w3_schools_customers', 'LastModifiedDate') IS NULL
BEGIN
    ALTER TABLE dbo.t_w3_schools_customers
    ADD LastModifiedDate DATETIME2;
END;
GO

SELECT
    CustomerID,
    ContactName,
    LastModifiedDate
FROM dbo.t_w3_schools_customers;