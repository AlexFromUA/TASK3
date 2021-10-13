SELECT ProductName, CategoryID, UnitPrice
FROM Products
WHERE CategoryID = 1
AND UnitPrice = (SELECT MAX(UnitPrice) FROM Products)
 