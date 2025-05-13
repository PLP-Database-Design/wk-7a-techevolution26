USE salesdb;


CREATE TABLE normalisedproduct(
Orderid INT,
CustomerName VARCHAR(100),
products VARCHAR(100),
FOREIGN KEY(OrderID) REFERENCES ProductDetail(ORDERID)
);


INSERT INTO normalisedproduct(Orderid,CustomerName,products)
VALUES
(101, "John Doe", "laptop"),
(101, "John Doe", "Mouse"),
(102, "Jane Smith", "Tablet"),
(102, "Jane Smith", "Keyboard"),
(102, "Jane Smith", "Mouse"),
(103, "Emily Clark","Phone");

SELECT* FROM normalisedproduct;



2ND NF

CREATE TABLE normalisedorder(
 ORDERID INT PRIMARY KEY AUTO_INCREMENT,
CustomerName VARCHAR(100)
);

INSERT INTO normalisedorder(ORDERID,CustomerName)
VALUES(101, "John Doe"),
(102,"Jane Smith"),
(103, "Emily Clark");

CREATE TABLE normalisedOrderDetails(
ORDERID INT,
product VARCHAR(100),
Quantity INT,
PRIMARY KEY (orderID, product),
FOREIGN KEY (OrderID) REFERENCES normalisedOrders(OrdersID)
);

INSERT INTO normalisedOrderDetails (OrderID, product, Quantity)
VALUES(101, "Laptop", 2),
(101, "Mouse", 1),
(102, "Tablet", 3),
(102, "Keyboard", 1),
(102, "Mouse", 2),
(103, "Phone", 1);

