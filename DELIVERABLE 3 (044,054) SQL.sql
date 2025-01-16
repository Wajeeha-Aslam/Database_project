--ONLINE BOOKSTORE DATABASE MANAGEMENT SYSTEM
--DELIVERABLE 3
--054+044

CREATE DATABASE boostore
USE boostore

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    ISBN VARCHAR(20) UNIQUE NOT NULL,
    PublisherID INT,
    GenreID INT,
    Price DECIMAL(10, 2) NOT NULL CHECK (Price >= 0),
    StockQuantity INT DEFAULT 0 CHECK (StockQuantity >= 0),
    PublishDate DATE,
    Language VARCHAR(50),
    Pages INT DEFAULT 0 CHECK (Pages >= 0),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
)

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY ,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    DateOfBirth DATE,
    Country VARCHAR(100) NOT NULL
)

CREATE TABLE Publishers (
    PublisherID INT PRIMARY KEY ,
    PublisherName VARCHAR(255) NOT NULL,
    Address TEXT,
    PhoneNumber VARCHAR(15) CHECK (PhoneNumber LIKE '_____-____-____'),
    Email VARCHAR(100) UNIQUE CHECK (Email LIKE '%@%.%')
)

CREATE TABLE Genres (
    GenreID INT PRIMARY KEY ,
    GenreName VARCHAR(100) NOT NULL
)

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY ,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL CHECK (Email LIKE '%@%.%'),
    PhoneNumber VARCHAR(15),
    Address TEXT,
    DateJoined DATE DEFAULT CURRENT_DATE
)

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY ,
    CustomerID INT,
    OrderDate DATE DEFAULT CURRENT_DATE,
    OrderStatus VARCHAR(50) DEFAULT 'Pending',
    TotalAmount DECIMAL(10, 2) NOT NULL CHECK (TotalAmount >= 0),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY ,
    OrderID INT,
    BookID INT,
    Quantity INT DEFAULT 1 CHECK (Quantity > 0),
    PriceAtPurchase DECIMAL(10, 2) NOT NULL CHECK (PriceAtPurchase >= 0),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
)

CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY ,
    BookID INT,
    QuantityInStock INT DEFAULT 0 CHECK (QuantityInStock >= 0),
    RestockDate DATE,
    SupplierID INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
)

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY ,
    SupplierName VARCHAR(255) NOT NULL,
    Address TEXT,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100) CHECK (Email LIKE '%@%.%')
)

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    PaymentDate DATE DEFAULT CURRENT_DATE,
    PaymentMethod VARCHAR(50) NOT NULL CHECK (PaymentMethod IN ('Credit Card', 'PayPal', 'Bank Transfer', 'Cash On Delivery')),
    AmountPaid DECIMAL(10, 2) NOT NULL CHECK (AmountPaid >= 0),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
)

CREATE TABLE Memberships (
    MembershipID INT PRIMARY KEY ,
    CustomerID INT,
    StartDate DATE DEFAULT CURRENT_DATE,
    EndDate DATE,
    MembershipType VARCHAR(50) NOT NULL CHECK (MembershipType IN ('Basic', 'Premium', 'Gold')),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)

CREATE TABLE BookReturns (
    ReturnID INT PRIMARY KEY ,
    OrderID INT,
    BookID INT,
    ReturnDate DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
)

CREATE TABLE BookReviews (
    ReviewID INT PRIMARY KEY ,
    CustomerID INT,
    BookID INT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    ReviewDate DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
)

CREATE TABLE Shipping (
    ShippingID INT PRIMARY KEY ,
    OrderID INT,
    ShippingDate DATE DEFAULT CURRENT_DATE,
    ShippingMethod VARCHAR(50) CHECK (ShippingMethod IN ('Standard', 'Express', 'Overnight')),
    ShippingAddress TEXT,
    TrackingNumber VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
)

CREATE TABLE Place (
    CustomerID INT,
    OrderID INT,
    PRIMARY KEY (CustomerID, OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
)

CREATE TABLE customer_Has_bookreturn (
    CustomerID INT,
    ReturnID INT,
    PRIMARY KEY (CustomerID, ReturnID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ReturnID) REFERENCES BookReturns(ReturnID)
)
