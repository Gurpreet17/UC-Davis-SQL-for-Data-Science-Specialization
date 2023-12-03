#Task: Find all the customer emails that start with "J" and are from gmail.com.
#Question: Enter the one email address returned (you will likely need to scroll to the right) below.
#Answer: jubarnett@gmail.com
SELECT FirstName, LastName, Email
FROM Customers
WHERE Email LIKE 'J%@gmail.com' 