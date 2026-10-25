CREATE TABLE dbo.OrderStatus 
(
 StatusID INT NOT NULL,
 StatusName NVARCHAR(30) NOT NULL,
 CONSTRAINT PK_OrderStatus PRIMARY KEY (StatusID) 
);