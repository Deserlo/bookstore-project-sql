/*Eva Najera*/
/*Spring 2018*/

CREATE DATABASE book_store;

/*Suppliers (SupplierID, CompanyName, ContactLastName, ContactFirstName, Phone)*/
CREATE TABLE Suppliers(SupplierID INTEGER AUTO_INCREMENT,
					   CompanyName VARCHAR(30),
					   ContactLastName VARCHAR(30),
					   ContactFirstName VARCHAR(30),
					   Phone VARCHAR(30),
					   PRIMARY KEY(SupplierID));
                       
/*Subjects (SubjectID, CategoryName)*/
CREATE TABLE Subjects(SubjectID INTEGER AUTO_INCREMENT,
					CategoryName VARCHAR(30),
                        PRIMARY KEY(SubjectID));   
                        
/*Employees (EmployeeID, LastName, FirstName)*/
CREATE TABLE Employees(EmployeeID INTEGER auto_increment,
						LastName VARCHAR(30),
                        FirstName VARCHAR(30),
                        PRIMARY KEY(EmployeeID));

/*Shippers (ShipperID, ShpperName)*/
CREATE TABLE Shippers(ShipperID INTEGER auto_increment,
						ShipperName VARCHAR(30),
                        PRIMARY KEY (ShipperID));

/*Customers (CustomerID, LastName, FirstName, Phone)*/
CREATE TABLE Customers(CustomerID INTEGER auto_increment,
						LastName VARCHAR(30),
                        FirstName VARCHAR(30),
                        Phone VARCHAR(30),
                        PRIMARY KEY(CustomerID));
                        
/*Books (BookID, Title, Unit_Price, Author, Unit_in_Stock, SupplierID, SubjectID)*/
CREATE TABLE Books(BookID INTEGER AUTO_INCREMENT,
					Title VARCHAR(55), 
                    Unit_Price DECIMAL (5,2),
                    Author VARCHAR(30),
                    Unit_in_Stock INTEGER,
                    SupplierID INTEGER,
                    SubjectID INTEGER,
                    primary key(BookID),
                    FOREIGN KEY(SupplierID) REFERENCES Suppliers(SupplierID),
                    FOREIGN KEY(SubjectID) REFERENCES Subjects(SubjectID));
                    
/*Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate, ShipperID)*/
CREATE TABLE Orders(OrderID INTEGER auto_increment,
					CustomerID INTEGER,
                    EmployeeID INTEGER,
                    OrderDate date,
                    ShippedDate date,
                    ShipperID INTEGER,
                    PRIMARY KEY(OrderID),
                    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
                    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
                    FOREIGN KEY (ShipperID) REFERENCES Shippers(ShipperID));

/*OrderDetails (BookID, OrderID, Quantity)*/
CREATE TABLE OrderDetails(BookID INTEGER,
						  OrderID INTEGER,
						  Quantity INTEGER,
						  PRIMARY KEY(BookID,OrderID),
                          FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
                          FOREIGN KEY (BookID) REFERENCES Books(BookID));




                    

