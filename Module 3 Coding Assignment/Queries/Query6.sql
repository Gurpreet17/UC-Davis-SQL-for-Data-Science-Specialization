#Task: Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order. 
#Question: After running the query described above, determine what is the last name of the 6th record? Enter it below. Remember to order things in descending order to be sure to get the correct answer.
#Answer: Taylor
SELECT Employees.FirstName AS Firstname, Employees.LastName AS Lastname
FROM Employees
UNION
SELECT Customers.FirstName, Customers.LastName 
FROM Customers 
ORDER BY  LastName DESC