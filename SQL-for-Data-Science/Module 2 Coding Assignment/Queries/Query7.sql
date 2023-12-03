#Task: Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.
#Question: What is the total invoice amount of the first record returned? Enter the number below without a $ sign. Remember to sort in descending order to get the correct answer.
#Answer: 13.86
SELECT InvoiceID,BillingCity,  Total
FROM Invoices
WHERE BillingCity IN ('Brasília', 'Edmonton', 'Vancouver')
ORDER BY InvoiceId DESC