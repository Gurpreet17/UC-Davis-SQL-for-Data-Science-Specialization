#Task: Retrieve all the records from the Employees table
#Question: What is Robert King's mailing address? Note: You will have to scroll to the right in order to see it.
#Answer: 590 Columbia Boulevard West, Lethbridge, AB, CANADA T1K 5N8
SELECT FirstName,LastName,Address,City, State,Country, PostalCode
FROM Employees
where Firstname = "Robert" AND LastName = "King"