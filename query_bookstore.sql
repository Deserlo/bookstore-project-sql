
/*Eva Najera*/
/*Spring 2018*/



SELECT 
    B.Title AS Book_Title
FROM
    books B
WHERE
    B.Unit_in_Stock > 5;

/*total price john smith has paid for books*/
SELECT 
    SUM(od.Quantity * B.unit_price) AS Total_Price_John_Smith_BookPurchases
FROM
    books B,
    orders O,
    orderdetails od,
    customers C
WHERE
    od.BookID = B.BookID
        AND od.OrderID = O.OrderID
        AND O.customerID = C.CustomerID
        AND (C.FirstName = 'John'
        AND C.LastName = 'Smith');

/*Q3*/
SELECT 
    C.FirstName, C.LastName
FROM
    books B,
    orders O,
    orderdetails od,
    customers C
WHERE
    od.BookID = B.BookID
        AND od.OrderID = O.OrderID
        AND O.customerID = C.CustomerID
GROUP BY C.FirstName
HAVING SUM(od.Quantity * B.unit_price) < 20.00;

/*Q4* Names of all books shipped on 8/5/17 and their shippers*/
SELECT 
    B.Title, S.ShipperName
FROM
    books B,
    shippers S,
    orders O,
    orderdetails OD
WHERE
    OD.BookID = B.BookID
        AND OD.OrderID = O.OrderID
        AND O.ShipperID = S.ShipperID
        AND O.ShippedDate = '2017-08-05';

/*Q5 names of all books john steely responsible for*/
SELECT DISTINCT
    (B.Title)
FROM
    Books B,
    Employees E,
    Orders O,
    orderdetails OD
WHERE
    B.BookID = OD.BookID
        AND E.EmployeeID = O.EmployeeID
        AND O.OrderID = OD.OrderID
        AND E.LastName = "Steely"
        AND E.FirstName = "John";

/*Q6 total price each customer paid and their names in desc order*/
SELECT 
    C.FirstName,
    C.LastName,
    SUM(od.Quantity * B.unit_price) AS Total_Price
FROM
    books B,
    orders O,
    orderdetails od,
    customers C
WHERE
    od.BookID = B.BookID
        AND od.OrderID = O.OrderID
        AND O.customerID = C.CustomerID
GROUP BY C.FirstName
ORDER BY Total_Price DESC;

/*Q7 john smith and jackies collins list of books bought*/
SELECT DISTINCT
    (B.Title)
FROM
    books B,
    orders O,
    orderdetails od,
    customers C
WHERE
    od.BookID = B.BookID
        AND od.OrderID = O.OrderID
        AND O.customerID = C.CustomerID
        AND ((C.FirstName = 'John'
        AND C.LastName = 'Smith')
        OR (C.FirstName = 'Jackie'
        AND C.LastName = 'Collins'));

/*Q8 names of all ordered books and their quantities in asc order*/
SELECT 
    B.Title, SUM(OD.quantity) AS Quantity
FROM
    books B,
    orders O,
    orderdetails od
WHERE
    od.BookID = B.BookID
        AND od.OrderID = O.OrderID
GROUP BY B.Title
ORDER BY Quantity;

/*Q9 Names of the customers who ordered at least a book whose name includes "Lousiana"*/
SELECT 
    C.FirstName, C.LastName
FROM
    books B,
    orders O,
    orderdetails od,
    customers C
WHERE
    od.BookID = B.BookID
        AND od.OrderID = O.OrderID
        AND O.customerID = C.CustomerID
        AND B.Title LIKE '%Louisiana%';

/*Q10 name of the customer who has ordered at least one book written by thomas*/
SELECT 
    C.FirstName, C.LastName
FROM
    books B,
    orders O,
    orderdetails od,
    customers C
WHERE
    od.BookID = B.BookID
        AND od.OrderID = O.OrderID
        AND O.customerID = C.CustomerID
        AND B.Author = 'Thomas';

/*Q11*/
SELECT 
    C.FirstName, C.LastName, B.Title
FROM
    books B,
    orders O,
    orderdetails od,
    customers C,
    subjects S
WHERE
    od.BookID = B.BookID
        AND od.OrderID = O.OrderID
        AND O.customerID = C.CustomerID
        AND S.SubjectID = B.SubjectID
        AND (S.CategoryName = 'Fiction'
        OR S.CategoryName = 'Travel');

/*Name of each category and cheapest book in that category*/
SELECT 
    S.CategoryName, B.Title
FROM
    Subjects S,
    Books B
WHERE
    S.SubjectID = B.SubjectID
GROUP BY S.CategoryName
HAVING MIN(B.Unit_Price);

												




/*Q13 Book names and their respective quantities for open
orders (the orders which have not been shipped) at midnight 08/04/17.*/
SELECT 
    B.Title, SUM(OD.quantity) AS Quantity
FROM
    books B,
    orders O,
    orderdetails od
WHERE
    od.BookID = B.BookID
        AND od.OrderID = O.OrderID
        AND (O.ShippedDate IS NULL
        OR O.ShippedDate >= '2017-08-04')
GROUP BY B.Title;

/*Q14 The names of customers who have ordered multiple (more
than 1) books and the corresponding quantities. List the result in the
descending quantity.*/
SELECT 
    C.FirstName, C.LastName, SUM(OD.Quantity) AS BooksOrdered
FROM
    books B,
    orders O,
    orderdetails OD,
    customers C
WHERE
    OD.BookID = B.BookID
        AND OD.OrderID = O.OrderID
        AND O.customerID = C.CustomerID
GROUP BY C.LastName
HAVING SUM(OD.Quantity) > 1
ORDER BY OD.Quantity DESC;

/*The names of customers who have ordered multiple (more
than 1) books and their respective telephone numbers.*/
SELECT 
    C.FirstName, C.LastName, C.Phone
FROM
    books B,
    orders O,
    orderdetails OD,
    customers C
WHERE
    OD.BookID = B.BookID
        AND OD.OrderID = O.OrderID
        AND O.customerID = C.CustomerID
GROUP BY C.LastName
HAVING SUM(OD.Quantity) > 1;












