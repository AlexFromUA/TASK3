SELECT EmployeeID, COUNT(ShipCity) as [French cities]
FROM Orders 
WHERE ShipCountry = 'France'
AND EmployeeID = 1
AND OrderDate > '1997/01/01' and OrderDate < '1998/01/01'
GROUP BY EmployeeID
