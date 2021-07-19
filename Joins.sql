Use AP

-- retrieving data from two or more tables
-- Inner Join: Result set will only include matches 

SELECT * 
FROM Vendors JOIN Invoices
	ON Vendors.VendorID = Invoices.VendorID

Select InvoiceNumber, VendorName
FROM Vendors JOIN Invoices
	ON Vendors.VendorID = Invoices.VendorID

SELECT VendorName, InvoiceNumber, InvoiceDate, (InvoiceTotal - (PaymentTotal + CreditTotal)) as Balance
FROM Vendors JOIN Invoices
	ON Vendors.VendorID = Invoices.InvoiceID

SELECT VendorName, DefaultAccountNo, AccountDescription
FROM Vendors JOIN GLAccounts
	ON Vendors.DefaultAccountNo = GLAccounts.AccountNo
ORDER BY AccountDescription, VendorName

--- Implicit Join Syntax
--- Note: It's best practice to use explicit sytax. Also, the WHERE clause makes it an inner join, remove the WHERE and it becomes a cross join

Select InvoiceNumber, VendorName
FROM Vendors,Invoices
WHERE Vendors.VendorID = Invoices.VendorID
