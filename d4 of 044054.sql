--ONLINE BOOKSTORE DATABASE MANAGEMENT SYSTEM
--DELIVERABLE 4
--054+044


-- Authors
INSERT INTO Authors (FirstName, LastName, DateOfBirth, Country) VALUES
('Faris', 'Ghazi', '1965-07-31', 'pakistan'),
('Jihan', 'Sikandar', '1903-06-25', 'pakistan'),
('Salar', 'Sikandar', '1775-12-16', 'pakistan'),
('Umer', 'Jahangir', '1835-11-30', 'pakistan'),
('Mahir', 'Fareed', '1890-09-15', 'pakistan');

-- Publishers
INSERT INTO Publishers (PublisherName, Address, PhoneNumber, Email) VALUES
('IllmoIrfan', 'Istambul, Turkey', '1234-5678-9012', 'info@IllmoIrfan.com'),
('BirbelsHouse', 'lahore, pakistan', '2345-6789-0123', 'contact@BirbelsHouse.com'),
('Adams', 'qadeemmalaka, malaisia', '3456-7890-1234', 'info@Adams.com'),
('mala and mahir', 'karachi, pakistan', '4567-8901-2345', 'support@malaandmahir.com'),
('Ghazi Publisher', 'Islamabad, pakistan', '5678-9012-3456', 'help@GhaziPublisher.com');

-- Genres
INSERT INTO Genres (GenreName) VALUES
('Fiction'),
('Non-Fiction'),
('Mystery'),
('Fantasy'),
('Islamic');

-- Books
INSERT INTO Books (Title, AuthorID, ISBN, PublisherID, GenreID, Price, StockQuantity, PublishDate, Language, Pages) VALUES
('Namal', 1, '9780747532699', 1, 4, 19.99, 50, '1997-06-26', 'urdu', 223),
('jkp', 2, '9780451524935', 2, 1, 9.99, 40, '1949-06-08', 'urdu', 328),
('peerekamil', 3, '9780141040349', 2, 5, 7.99, 60, '1813-01-28', 'urdu', 279),
('amarbail', 4, '9780192837037', 3, 1, 8.50, 35, '1876-01-01', 'urdu', 200),
('Mala', 5, '9780007119318', 5, 3, 12.99, 45, '1934-01-01', 'urdu', 256);

-- Customers
INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber, Address, DateJoined) VALUES
('zumar', 'yousaf', 'zumar.yousaf@gmail.com', '1111-2222-3333', '123 moorchal', '2024-01-15'),
('haya', 'sulaiman', 'haya.sulaiman@yahoo.com', '2222-3333-4444', '456 secret house', '2024-02-10'),
('imama', 'hashim', 'imama.hashim@hotmail.com', '3333-4444-5555', '789 DHa phase 7', '2024-03-05'),
('alizey', 'sikandar', 'alizey.sikandar@gmail.com', '4444-5555-6666', '101 DHA phase 4', '2024-04-20'),
('kashmala', 'mubeen', 'kashmala.mubeen@outlook.com', '5555-6666-7777', '202 muslim town ', '2024-05-18');



-- Insert Suppliers
INSERT INTO Suppliers (SupplierName, Address, PhoneNumber, Email) VALUES
('Urdu Books Supplier', '123  barket Market, NY', '1234-5678-9101', 'contact@UrduBooksSupplier.com'),
('qayoom World', '456 alam Street, CA', '2345-6789-0123', 'support@qayoomWorld.com'),
('Knowledge Hub', '789 farina Avenue, TX', '3456-7890-1234', 'info@KnowledgeHub.com'),
('Bhai bhai Publishers', '101 al noor street, FL', '4567-8901-2345', 'sales@BhaibhaiPublishers.com'),
('sab pao gey', '202 pakarab', '5678-9012-3456', 'help@sabpagey.com');

-- Insert Inventory
INSERT INTO Inventory (BookID, QuantityInStock, RestockDate, SupplierID) VALUES
(1, 50, '2024-01-10', 1),
(2, 40, '2024-02-15', 2),
(3, 60, '2024-03-20', 3),
(4, 35, '2024-04-25', 4),
(5, 45, '2024-05-30', 5);

-- Insert Orders
INSERT INTO Orders (CustomerID, OrderDate, OrderStatus, TotalAmount) VALUES
(1, '2024-12-01', 'Shipped', 50.00),
(2, '2024-12-02', 'Delivered', 20.00),
(3, '2024-12-03', 'Pending', 100.00),
(4, '2024-12-04', 'Cancelled', 35.00),
(5, '2024-12-05', 'Shipped', 25.00);

-- Insert Order Details
INSERT INTO OrderDetails (OrderID, BookID, Quantity, PriceAtPurchase) VALUES
(1, 1, 2, 19.99),
(2, 2, 1, 9.99),
(3, 3, 3, 7.99),
(4, 4, 2, 8.50),
(5, 5, 1, 12.99);

-- Insert Payments
INSERT INTO Payments (OrderID, PaymentDate, PaymentMethod, AmountPaid) VALUES
(1, '2024-12-01', 'Credit Card', 50.00),
(2, '2024-12-02', 'PayPal', 20.00),
(3, '2024-12-03', 'Bank Transfer', 100.00),
(4, '2024-12-04', 'Credit Card', 35.00),
(5, '2024-12-05', 'Cash On Delivery', 25.00);

-- Insert Memberships
INSERT INTO Memberships (CustomerID, StartDate, EndDate, MembershipType) VALUES
(1, '2024-01-01', '2024-12-31', 'Gold'),
(2, '2024-01-15', '2024-12-15', 'Premium'),
(3, '2024-02-01', '2024-12-01', 'Basic'),
(4, '2024-03-01', '2024-12-01', 'Premium'),
(5, '2024-04-01', '2024-12-01', 'Gold');

-- Insert Book Returns
INSERT INTO BookReturns (OrderID, BookID, ReturnDate) VALUES
(1, 1, '2024-12-10'),
(2, 2, '2024-12-12'),
(3, 3, '2024-12-14'),
(4, 4, '2024-12-16'),
(5, 5, '2024-12-18');

-- Insert Book Reviews
INSERT INTO BookReviews (CustomerID, BookID, Rating, ReviewDate) VALUES
(1, 1, 5, '2024-12-01'),
(2, 2, 4, '2024-12-02'),
(3, 3, 3, '2024-12-03'),
(4, 4, 5, '2024-12-04'),
(5, 5, 4, '2024-12-05');

-- Insert Shipping
INSERT INTO Shipping (OrderID, ShippingDate, ShippingMethod, ShippingAddress, TrackingNumber) VALUES
(1, '2024-12-02', 'Express', '123 moorchal', 'TRK123456789'),
(2, '2024-12-03', 'Standard', '456 secret house', 'TRK987654321'),
(3, '2024-12-04', 'Overnight', '789 DHa phase 7', 'TRK112233445'),
(4, '2024-12-05', 'Express', '101 DHA phase 4', 'TRK223344556'),
(5, '2024-12-06', 'Standard', '202 muslim town', 'TRK334455667');

-- Insert Place
INSERT INTO Place (CustomerID, OrderID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insert Customer Has BookReturn
INSERT INTO customer_Has_bookreturn (CustomerID, ReturnID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5)






--Update Book Price
 CREATE PROCEDURE UpdateBookPrice
    @BookID INT,
    @NewPrice DECIMAL(10, 2)
AS

    
    UPDATE Books
    SET Price = @NewPrice
    WHERE BookID = @BookID;

    PRINT 'Book price updated successfully.'

	EXEC UpdateBookPrice @BookID = 1, @NewPrice = 919.99


	--Update Customer Email
	CREATE PROCEDURE UpdateCustomerEmail
    @CustomerID INT,
    @NewEmail VARCHAR(255)
AS

    UPDATE Customers
    SET Email = @NewEmail
    WHERE CustomerID = @CustomerID
    PRINT 'Customer email updated successfully.'

	EXEC UpdateCustomerEmail  @CustomerID = 1, @NewEmail= ghazi@gmail.com


--Restock Inventory
CREATE PROCEDURE RestockInventory
    @BookID INT,
    @AdditionalQuantity INT
AS

    UPDATE Books
    SET StockQuantity = StockQuantity + @AdditionalQuantity
    WHERE BookID = @BookID;

    PRINT 'Book inventory restocked successfully.'

	EXEC RestockInventory @BookID = 1, @AdditionalQuantity = 50



--Register New Customer
CREATE PROCEDURE RegisterNewCustomer
    @FirstName VARCHAR(100),
    @LastName VARCHAR(100),
    @Email VARCHAR(100),
    @PhoneNumber VARCHAR(15),
    @Address TEXT
AS

    INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber, Address, DateJoined)
    VALUES (@FirstName, @LastName, @Email, @PhoneNumber, @Address, GETDATE());

    PRINT 'Customer registered successfully.'

	EXEC RegisterNewCustomer 
    @FirstName = 'Fateh', 
    @LastName = 'ramzel', 
    @Email = 'Fatehbinramzel@example.com', 
    @PhoneNumber = '123-456-7890', 
    @Address = '123 malaka, malaisia'



--Add Book Review
CREATE PROCEDURE AddBookReview
    @CustomerID INT,
    @BookID INT,
    @Rating INT,
    @ReviewDate DATE,
    
AS

    INSERT INTO BookReviews (CustomerID, BookID, Rating, ReviewDate)
    VALUES (@CustomerID, @BookID, @Rating, @ReviewDate);

    PRINT 'Review added successfully.';

	EXEC AddBookReview 
    @CustomerID = 1, 
    @BookID = 2, 
    @Rating = 5, 
    @ReviewDate = GETDATE()
  


--Retrieve Customer Orders
CREATE PROCEDURE RetrieveCustomerOrders
    @CustomerID INT
AS
    SELECT 
        Orders.OrderID,
        Orders.OrderDate,
        Orders.OrderStatus,
        Orders.TotalAmount
    FROM Orders
    WHERE Orders.CustomerID = @CustomerID

    PRINT 'Orders retrieved successfully.'


	EXEC RetrieveCustomerOrders @CustomerID = 1




	--views

--view Books With Authors
CREATE VIEW BooksWithAuthors AS
SELECT 
    b.BookID,
    b.Title,
    CONCAT(a.FirstName, ' ', a.LastName) AS AuthorName,
    b.Price,
    b.StockQuantity
FROM 
    Books b
LEFT JOIN Authors a ON b.AuthorID = a.AuthorID

SELECT * FROM BooksWithAuthors



--view Order Details View
CREATE VIEW OrderDetailsView AS
SELECT 
    o.OrderID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    o.OrderDate,
    o.OrderStatus,
    o.TotalAmount
FROM 
    Orders o
LEFT JOIN Customers c ON o.CustomerID = c.CustomerID

SELECT * FROM OrderDetailsView WHERE OrderStatus = 'Pending'



--VIEW Books InStock
CREATE VIEW BooksInStock AS
SELECT 
    b.BookID,
    b.Title,
    b.Price,
    b.StockQuantity,
    i.QuantityInStock,
    s.SupplierName
FROM 
    Books b
LEFT JOIN Inventory i ON b.BookID = i.BookID
LEFT JOIN Suppliers s ON i.SupplierID = s.SupplierID
WHERE 
    b.StockQuantity > 0


SELECT * FROM BooksInStock ORDER BY StockQuantity DESC




--VIEW Customer Orders
CREATE VIEW CustomerOrders AS
SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(o.TotalAmount) AS TotalSpent
FROM 
    Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY 
    c.CustomerID, c.FirstName, c.LastName;


SELECT * FROM CustomerOrders WHERE TotalOrders > 5;




--VIEW Top Rated Books
CREATE VIEW TopRatedBooks AS
SELECT 
    b.BookID,
    b.Title,
    AVG(r.Rating) AS AverageRating,
    COUNT(r.ReviewID) AS TotalReviews
FROM 
    Books b
LEFT JOIN BookReviews r ON b.BookID = r.BookID
GROUP BY 
    b.BookID, b.Title
HAVING 
    COUNT(r.ReviewID) > 0;



SELECT * FROM TopRatedBooks ORDER BY AverageRating DESC















