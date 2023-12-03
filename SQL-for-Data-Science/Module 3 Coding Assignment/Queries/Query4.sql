#Task: Retrieve a list with the managers last name, and the last name of the employees who report to him or her.
#Question: After running the query described above, who are the reports for the manager named Mitchell (select all that apply)?
#Answer: King, Callahan
SELECT M.LastName AS Manager, E.LastName AS Employee
FROM Employees M INNER JOIN Employees E on E.ReportsTo = M.EmployeeId