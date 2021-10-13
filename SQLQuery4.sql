SELECT o.EmployeeID, FirstName, LastName, COUNT(CustomerID) customers
FROM Orders o
INNER JOIN  Employees e on o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID, FirstName, LastName
ORDER BY customers DESC 
OFFSET 0 ROWS FETCH FIRST 1 ROWS ONLY
