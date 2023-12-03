#Task: Create a new employee user id by combining the first 4 letters of the employee’s first name with the first 2 letters of the employee’s last name. Make the new field lower case and pull each individual step to show your work.
#Question: What is the final result for Robert King?
#Answer: RobeKi
SELECT 
    EmployeeId,
    FirstName,
    LastName,
    SUBSTR(FirstName, 0, 5)
        || SUBSTR(LastName, 0, 3) AS 'New User Id'
FROM
    Employees
WHERE
    FirstName = 'Robert'
        AND LastName = 'King'