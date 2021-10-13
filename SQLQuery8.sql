SELECT c.CompanyName, c.City, c.Country, o.ShipCity, o.ShipCountry
FROM Customers c RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE c.City != o.ShipCity