#Task: Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.
#Question: What company does Jack Smith work for?
#Answer: Microsoft Corp
SELECT FirstName, LastName, State, Company
FROM Customers
WHERE State IN ('RJ','DF', 'AB', 'BC', 'CA', 'WA', 'NY')