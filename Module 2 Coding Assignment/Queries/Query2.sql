#Task: Find all the invoices whose total is between $5 and $15 dollars.
#Question: While the query in this example is limited to 10 records, running the query correctly will indicate how many total records there are - enter that number below.
#Answer: 168
SELECT InvoiceID, Total 
FROM Invoices 
WHERE Total BETWEEN 5 AND 15
ORDER BY Total ASC