#Task: Show a list of employees who have worked for the company for 15 or more years using the current date function. Sort by lastname ascending.
#Question: What is the lastname of the last person on the list returned?
#Answer: Peacock
SELECT 
    LastName,
    HireDate,
    DATEDIFF(NOW(), HireDate) AS 'WORK PERIOD'
FROM
    Employees
WHERE
    DATEDIFF(NOW(), HireDate) >= 15
ORDER BY LastName ASC