USE Northwind;
GO

SELECT        Customers.CustomerID, Customers.CompanyName, Customers.ContactName, Customers.ContactTitle, Customers.City, Customers.Country, Orders.EmployeeID, Orders.OrderDate, Orders.Freight, Orders.ShipCity, 
                         Orders.ShipCountry, [Order Details].ProductID, [Order Details].UnitPrice, [Order Details].Quantity, [Order Details].OrderID, Employees.LastName, Employees.FirstName, Products.ProductName, Products.UnitsInStock
INTO KU
FROM            Customers INNER JOIN
                         Orders ON Customers.CustomerID = Orders.CustomerID INNER JOIN
                         Employees ON Orders.EmployeeID = Employees.EmployeeID INNER JOIN
                         [Order Details] ON Orders.OrderID = [Order Details].OrderID INNER JOIN
                         Products ON [Order Details].ProductID = Products.ProductID
GO



insert into ku
select * from ku
go 9
--10 13 16 -- 45 1:20

alter table ku add id int identity
--9 1:14

select * into ku2 from ku


set statistics io , time on
--IO = Anzahl der Seiten
--Dauer in ms
--CPU Zeit in ms
--Analyse und Kompliziert in ms

select country, sum(unitprice*quantity)
from ku
group by country
option (maxdop 1)

select * from orders where freight > 100

Kostenschwellwert
--OLTP: 50
--OLAP: 25

Server: Maxdop 1
DB:            8
Abfrage:       -


--Analyse: , CPU-Zeit = 67 ms, verstrichene Zeit = 67 ms.
--, CPU-Zeit = 813 ms, verstrichene Zeit = 100 ms.
--Doppelpfeil im Plan: mehr Kerne








