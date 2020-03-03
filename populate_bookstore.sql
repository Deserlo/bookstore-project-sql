/*Eva Najera*/
/*Spring 2018*/


 
INSERT INTO suppliers (CompanyName, ContactLastName, ContactFirstName, Phone) VALUES ("Amazon", "Hamilton", "Laurell", "605-145-1875");
INSERT INTO suppliers (CompanyName, ContactLastName, ContactFirstName, Phone) VALUES ("Ebay", "Koontz", "Dean", "605-244-1104");
INSERT INTO suppliers (CompanyName, ContactLastName, ContactFirstName, Phone) VALUES ("Booksamillion", "Roberts", "Nora", "916-787-3320");
INSERT INTO suppliers (CompanyName, ContactLastName, ContactFirstName, Phone) VALUES ("University", "Carter", "Stephen", "916-412-2004");

 
INSERT INTO subjects (CategoryName) VALUES ("Fiction");
INSERT INTO subjects (CategoryName) VALUES ("History");
INSERT INTO subjects (CategoryName) VALUES ("Travel");
INSERT INTO subjects (CategoryName) VALUES ("Technology");


 
INSERT INTO books (Title, Unit_Price, Author, Unit_in_Stock, SupplierID, SubjectID) VALUES("The Quickie", 15.94, "James", 5, 3, 1);
INSERT INTO books (Title, Unit_Price, Author, Unit_in_Stock, SupplierID, SubjectID) VALUES("Blaze", 13.24 , "Richard", 2, 3, 1);
INSERT INTO books (Title, Unit_Price, Author, Unit_in_Stock, SupplierID, SubjectID) VALUES("The Navigator", 14.01 , "Clive", 10, 2 , 1);
INSERT INTO books (Title, Unit_Price, Author, Unit_in_Stock, SupplierID, SubjectID) VALUES("Birmingham", 19.99 , "Tim", 12, 3 , 2);
INSERT INTO books (Title, Unit_Price, Author, Unit_in_Stock, SupplierID, SubjectID) VALUES("North Carolina Ghosts", 7.95 , "Lynne", 5, 2 , 2);
INSERT INTO books (Title, Unit_Price, Author, Unit_in_Stock, SupplierID, SubjectID) VALUES("Why I still live in Louisiana", 5.95 , "Ellen", 30, 1 , 3);
INSERT INTO books (Title, Unit_Price, Author, Unit_in_Stock, SupplierID, SubjectID) VALUES("The World Is Flat", 30 , "Thomas", 17, 3 , 4);

 
INSERT INTO Employees(LastName, FirstName) VALUES ("Larson", "Erik");
INSERT INTO Employees(LastName, FirstName) VALUES ("Steely", "John");

 
INSERT INTO Shippers (ShipperName) VALUES ("UPS");
INSERT INTO Shippers (ShipperName) VALUES ("USPS");
INSERT INTO Shippers (ShipperName) VALUES ("FedEx");

 
INSERT INTO Customers (LastName, FirstName, Phone) VALUES ("Lee", "James", "916-541-4568");
INSERT INTO Customers (LastName, FirstName, Phone) VALUES ("Smith", "John", "916-057-0087");
INSERT INTO Customers (LastName, FirstName, Phone) VALUES ("See", "Lisa", "605-054-0010");
INSERT INTO Customers (LastName, FirstName, Phone) VALUES ("Collins", "Jackie", "605-044-6582");

 
INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, ShippedDate, ShipperID) VALUES (1, 1, "2017-08-01", "2017-08-03", 1);
INSERT INTO Orders (CustomerID, EmployeeID, OrderDate) VALUES (1, 2, "2017-08-04");
INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, ShippedDate, ShipperID) VALUES (2, 1, "2017-08-01", "2017-08-03", 2);
INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, ShippedDate, ShipperID) VALUES (4, 2, "2017-08-04", "2017-08-05", 1);

 
INSERT INTO OrderDetails (BookID, OrderID, Quantity) VALUES (1,1,2);
INSERT INTO OrderDetails (BookID, OrderID, Quantity) VALUES (4,1,1);
INSERT INTO OrderDetails (BookID, OrderID, Quantity) VALUES (6,2,2);
INSERT INTO OrderDetails (BookID, OrderID, Quantity) VALUES (7,2,3);
INSERT INTO OrderDetails (BookID, OrderID, Quantity) VALUES (5,3,1);
INSERT INTO OrderDetails (BookID, OrderID, Quantity) VALUES (3,4,1);
INSERT INTO OrderDetails (BookID, OrderID, Quantity) VALUES (4,4,1);
INSERT INTO OrderDetails (BookID, OrderID, Quantity) VALUES (7,4,1);



