/*
EC_IT143_6.3_fwt_lastmodifiedby_s6_tf.sql

Question:
How do I keep track of who last modified
a customer record?

Answer:
I created and tested an AFTER UPDATE trigger
that automatically stores the current server user
in the LastModifiedBy column when a customer
record is updated.

Next Question:
How can I use triggers to track other changes
made to records in the database?
*/