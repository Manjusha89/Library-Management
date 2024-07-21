CREATE DATABASE library;
show databases;
use library;
CREATE TABLE Branch (Branch_no INT PRIMARY KEY,
  Manager_Id INT,
  Branch_address CHAR(50),
  Contact_no CHAR(15));
  
  desc Branch;
  INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
VALUES
  (1, 1, 'Address1', '1234567890'),
  (2, 2, 'Address2', '2345678901'),
  (3, 3, 'Address3', '3456789012'),
  (4, 4, 'Address4', '4567890123'),
  (5, 5, 'Address5', '5678901234'),
  (6, 6, 'Address6', '6789012345'),
  (7, 7, 'Address7', '7890123456'),
  (8, 8, 'Address8', '8901234567'),
  (9, 9, 'Address9', '9012345678'),
  (10, 10, 'Address10', '0123456789');
  select *from Branch;
  
  CREATE TABLE Employee1 (Emp_Id INT PRIMARY KEY,
  Emp_name VARCHAR(250),
  Position VARCHAR(100),
  Salary DECIMAL(10, 2),
  Branch_no INT,
  FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no));
  desc Employee1;
  INSERT INTO Employee1 (Emp_Id, Emp_name, Position, Salary, Branch_no)
VALUES
  (1, 'Emp1', 'Manager', 50000, 1),
  (2, 'Emp2', 'Assistant', 30000, 2),
  (3, 'Emp3', 'Clerk', 25000, 3),
  (4, 'Emp4', 'Manager', 50000, 4),
  (5, 'Emp5', 'Assistant', 30000, 5),
  (6, 'Emp6', 'Clerk', 25000, 6),
  (7, 'Emp7', 'Manager', 50000, 7),
  (8, 'Emp8', 'Assistant', 30000, 8),
  (9, 'Emp9', 'Clerk', 25000, 9),
  (10, 'Emp10', 'Manager', 50000, 10);
  select *from Employee1;
  
  CREATE TABLE Books (ISBN VARCHAR(20) PRIMARY KEY,
  Book_title VARCHAR(100),
  Category VARCHAR(50),
  Rental_Price DECIMAL(10, 2),
  Status VARCHAR(5),
  Author VARCHAR(50),
  Publisher VARCHAR(50));
  desc Books;
  INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher)
VALUES
  ('ISBN1', 'Book1', 'Category1', 50, 'yes', 'Author1', 'Publisher1'),
  ('ISBN2', 'Book2', 'Category2', 75, 'yes', 'Author2', 'Publisher2'),
  ('ISBN3', 'Book3', 'Category3', 100, 'yes', 'Author3', 'Publisher3'),
  ('ISBN4', 'Book4', 'Category4', 50, 'yes', 'Author4', 'Publisher4'),
  ('ISBN5', 'Book5', 'Category5', 75, 'yes', 'Author5', 'Publisher5'),
  ('ISBN6', 'Book6', 'Category6', 100, 'yes', 'Author6', 'Publisher6'),
  ('ISBN7', 'Book7', 'Category7', 50, 'yes', 'Author7', 'Publisher7'),
  ('ISBN8', 'Book8', 'Category8', 75, 'yes', 'Author8', 'Publisher8'),
  ('ISBN9', 'Book9', 'Category9', 100, 'yes', 'Author9', 'Publisher9'),
  ('ISBN10', 'Book10', 'Category10', 50, 'yes', 'Author10', 'Publisher10');
  select *from Books;
  
  CREATE TABLE Customer (Customer_Id INT PRIMARY KEY,
  Customer_name VARCHAR(50),
  Customer_address VARCHAR(200),
  Reg_date DATE);
  desc Customer;
  INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date)
VALUES
  (1, 'Customer1', 'Address1', '2020-01-01'),
  (2, 'Customer2', 'Address2', '2020-01-15'),
  (3, 'Customer3', 'Address3', '2020-02-01'),
  (4, 'Customer4', 'Address4', '2020-03-01'),
  (5, 'Customer5', 'Address5', '2020-04-01'),
  (6, 'Customer6', 'Address6', '2020-05-01'),
  (7, 'Customer7', 'Address7', '2020-06-01'),
  (8, 'Customer8', 'Address8', '2020-07-01'),
  (9, 'Customer9', 'Address9', '2020-08-01'),
  (10, 'Customer10', 'Address10', '2020-09-01');
  select *from Customer;
  
  CREATE TABLE IssueStatus (Issue_Id INT PRIMARY KEY,
  Issued_cust INT,
  Issued_book_name VARCHAR(100),
  Issue_date DATE,
  Isbn_book VARCHAR(20),
  FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
  FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN));
  desc IssueStatus;
  INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
VALUES
  (1, 1, 'Book1', '2020-01-02', 'ISBN1'),
  (2, 2, 'Book2', '2020-01-17', 'ISBN2'),
  (3, 3, 'Book3', '2020-02-02', 'ISBN3'),
  (4, 4, 'Book4', '2020-03-02', 'ISBN4'),
  (5, 5, 'Book5', '2020-04-02', 'ISBN5'),
  (6, 6, 'Book6', '2020-05-02', 'ISBN6'),
  (7, 7, 'Book7', '2020-06-02', 'ISBN7'),
  (8, 8, 'Book8', '2020-07-02', 'ISBN8'),
  (9, 9, 'Book9', '2020-08-02', 'ISBN9'),
  (10, 10, 'Book10', '2020-09-02', 'ISBN10');
  select *from IssueStatus;
  
  
  CREATE TABLE ReturnStatus (Return_Id INT PRIMARY KEY,
  Return_cust INT,
  Return_book_name VARCHAR(100),
  Return_date DATE,
  Isbn_book2 VARCHAR(20),
  FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
  FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN));
  desc ReturnStatus;
  INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2)
VALUES
  (1, 1, 'Book1', '2020-01-05', 'ISBN1'),
  (2, 2, 'Book2', '2020-01-20', 'ISBN2'),
  (3, 3, 'Book3', '2020-02-05', 'ISBN3'),
  (4, 4, 'Book4', '2020-03-05', 'ISBN4'),
  (5, 5, 'Book5', '2020-04-05', 'ISBN5'),
  (6, 6, 'Book6', '2020-05-05', 'ISBN6'),
  (7, 7, 'Book7', '2020-06-05', 'ISBN7'),
  (8, 8, 'Book8', '2020-07-05', 'ISBN8'),
  (9, 9, 'Book9', '2020-08-05', 'ISBN9'),
  (10, 10, 'Book10', '2020-09-05', 'ISBN10');
  select *from ReturnStatus;
  
  -- Retrieve
  SELECT 
  Book_title, 
  Category, 
  Rental_Price
FROM 
  Books
WHERE 
  Status = 'yes';
  
  -- descending order of salary
  SELECT Emp_name, Salary
FROM Employee1
ORDER BY Salary DESC;

-- Retrieve the book titles and the corresponding customers 
SELECT 
  Book_title, 
  Customer_name
FROM 
  Books
INNER JOIN 
  IssueStatus
ON 
  Books.ISBN = IssueStatus.Isbn_book
INNER JOIN 
  Customer
ON 
  IssueStatus.Issued_cust = Customer.Customer_Id;
  
  -- display the total count of books in each category
  SELECT Category, COUNT(*) AS Num_Books
FROM Books
GROUP BY Category;

-- salaries are above Rs.25,000
SELECT Emp_name, Position
FROM Employee1
WHERE Salary > 25000;

-- registered before 2022-01-01
SELECT Customer_name
FROM Customer
WHERE Reg_date < '2022-01-01'
AND Customer_Id NOT IN (SELECT Issued_cust FROM IssueStatus);

-- branch numbers and the total count of employees in each branch
SELECT Branch_no, COUNT(*) AS Num_Employees
FROM Employee1
GROUP BY Branch_no;

-- names of customers who have issued books in the month of June 2023
SELECT 
  Customer_name
FROM 
  Customer
INNER JOIN 
  IssueStatus
ON 
  Customer.Customer_Id = IssueStatus.Issued_cust
WHERE 
  Issue_date >= '2020-05-01'
AND 
  Issue_date < '2023-06-01';
  
  
  -- retrieve the book_title from the book table containing the word "history",
  SELECT Book_title
FROM Books
WHERE Book_title LIKE '%Book5%';

-- employees for branches having more than 5 employees
SELECT Branch_no, COUNT(*) AS Num_Employees
FROM Employee1
GROUP BY Branch_no
HAVING COUNT(*) > 5;

--  Retrieve the names of employees who manage branches
SELECT E.Emp_name, B.Branch_address
FROM Employee1 E
JOIN Branch B ON E.Branch_no = B.Branch_no
WHERE E.Position = 'Manager';


-- rental price higher than Rs. 25
SELECT 
  Customer_name
FROM 
  Customer
INNER JOIN 
  IssueStatus
ON 
  Customer.Customer_Id = IssueStatus.Issued_cust
INNER JOIN 
  Books
ON 
  IssueStatus.Isbn_book = Books.ISBN
WHERE 
  Rental_Price > 25;


  
