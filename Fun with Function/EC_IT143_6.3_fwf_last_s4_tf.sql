/*
EC_IT143_6.3_fwf_last_s4_lf.sql

Question:
How do I extract the last name from ContactName?

Research:
REVERSE reverses the ContactName.
CHARINDEX finds the position of the first space
in the reversed ContactName.
RIGHT returns the characters from the right side.
RTRIM removes trailing spaces.

Sources:
Microsoft Learn - REVERSE
Microsoft Learn - CHARINDEX
Microsoft Learn - RIGHT
Microsoft Learn - RTRIM
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
    END AS LastName
FROM dbo.t_w3_schools_customers;