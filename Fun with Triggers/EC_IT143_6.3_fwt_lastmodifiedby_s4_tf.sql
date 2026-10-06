/*
EC_IT143_6.3_fwt_lastmodifiedby_s4_tf.sql

Question:
How do I keep track of who last modified
a customer record?

Purpose:
Create an AFTER UPDATE trigger that records
the server user who last modified a customer record.

Author:
Timote Finau
*/

CREATE OR ALTER TRIGGER dbo.trg_LastModifiedBy
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE c
    SET c.LastModifiedBy = SUSER_NAME()
    FROM dbo.t_w3_schools_customers AS c
    INNER JOIN inserted AS i
        ON c.CustomerID = i.CustomerID;
END;
GO