/*
EC_IT143_6.3_fwt_s4_lf.sql

Question:
How do I keep track of when a customer record
was last modified?

Purpose:
Create an AFTER UPDATE trigger that updates
LastModifiedDate when a customer record changes.

Author:
Timote Finau
*/

CREATE OR ALTER TRIGGER dbo.trg_LastModifiedDate
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE c
    SET LastModifiedDate = SYSDATETIME()
    FROM dbo.t_w3_schools_customers AS c
    INNER JOIN inserted AS i
        ON c.CustomerID = i.CustomerID;
END;
GO