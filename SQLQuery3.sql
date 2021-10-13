SELECT o.CustomerID, CompanyName
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE ShippedDate is NULL