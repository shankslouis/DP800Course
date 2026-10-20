CREATE TABLE dbo.SalesOrder
(
 SalesOrderID INT NOT NULL,
 CustomerID INT NOT NULL,
 OrderDate DATE NOT NULL,
 ShipDate DATE NULL,
 TotalAmount DECIMAL(12,2) NOT NULL,
 CONSTRAINT PK_SalesOrder PRIMARY KEY (SalesOrderID),
 CONSTRAINT CK_SalesOrder_TotalAmount CHECK (TotalAmount >= 0)
);