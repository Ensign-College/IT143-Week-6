/*
EC_IT143_6.3_fwt_lastmodifiedby_s2_tf.sql

Question:
How do I keep track of who last modified
a customer record?

Answer:
I need a column in the customer table to store
the server user who last modified the record.

I can use SUSER_NAME() to get the current
server user's login name.

My next step is to add a LastModifiedBy column
and test SUSER_NAME().
