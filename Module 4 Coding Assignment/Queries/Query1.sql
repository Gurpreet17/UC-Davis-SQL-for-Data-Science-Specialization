#Task: Pull a list of customer ids with the customer’s full name, and address, along with combining their city and country together. Be sure to make a space in between these two and make it UPPER CASE. (e.g. LOS ANGELES USA)
#Question: What is the city and country result for CustomerID 16?
#Answer: Mountain View USA
SELECT 
    Customerid,
    FirstName,
    LastName,
    Address,
    City || ' ' || Country AS 'City & Country'
FROM
    Customers