CREATE TABLE dbo.SalesOrder
(
 SalesOrderID INT NOT NULL,
 CustomerID INT NOT NULL,
 OrderDate DATE NOT NULL,
 ShipDate DATE NULL,
 TotalAmount DECIMAL(12,2) NOT NULL,
 StatusID     INT           NOT NULL
 CONSTRAINT DF_SalesOrder_StatusID DEFAULT (1),
 CONSTRAINT PK_SalesOrder PRIMARY KEY (SalesOrderID),
 CONSTRAINT CK_SalesOrder_TotalAmount CHECK (TotalAmount >= 0 AND TotalAmount <= 1000000),
 CONSTRAINT FK_SalesOrder_OrderStatus FOREIGN KEY (StatusID)
    REFERENCES dbo.OrderStatus (StatusID)
);
