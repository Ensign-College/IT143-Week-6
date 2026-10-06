/*
EC_IT143_6.3_fwt_lastmodifiedby_s5_tf.sql

Purpose:
Test the AFTER UPDATE trigger to verify
that LastModifiedBy is updated automatically.
*/

-- Check the record before the update
SELECT
    CustomerID,
    ContactName,
    LastModifiedBy
FROM dbo.t_w3_schools_customers
WHERE CustomerID = 1;
GO

-- Update the customer record
UPDATE dbo.t_w3_schools_customers
SET ContactName = ContactName
WHERE CustomerID = 1;
GO

-- Check the record after the update
SELECT
    CustomerID,
    ContactName,
    LastModifiedBy
FROM dbo.t_w3_schools_customers
WHERE CustomerID = 1;
GO