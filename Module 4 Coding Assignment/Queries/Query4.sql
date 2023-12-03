#Task: Profiling the Customers table, answer the following question.
#Question: Are there any columns with null values? Indicate any below. Select all that apply.
#Answer: Postal Code, Fax, Phone, Company
   SELECT 
    *,
    CASE
        WHEN PostalCode IS NULL THEN 'PostalCode is NULL'
        WHEN Fax IS NULL THEN 'Fax is NULL'
        WHEN Address IS NULL THEN 'Address is NULL'
        WHEN Phone IS NULL THEN 'Phone is NULL'
        WHEN FirstName IS NULL THEN 'Name is NULL'
        WHEN Company IS NULL THEN 'Company is NULL'
        ELSE 'NO NULLS'
    END ColumnWithNull
FROM
    Customers;