
DROP DATABASE IF EXISTS Cars_R_Us_4;
USE Cars_R_Us_4;

--1. Number of car rentals per month
SELECT MONTH(R.RentalDate) AS [Month],
COUNT(R.RentalDate) AS NumberOfRentals
FROM Rental AS R
GROUP BY MONTH(R.RentalDate);

--2. Average length of rentals
SELECT AVG(DATEDIFF(DAY, R.RentalDate, R.ReturnDate)) AS AverageRental
FROM Rental AS R;
 
--3. Number of Customers who use the rental service
SELECT COUNT(C.CustomerID) AS NumberOfCustomers
FROM Customers AS C;
 
--4. Hire date of Employees
SELECT E.EmployeeID,
E.HireDate
FROM Employees AS E;
 
--5. Type of payment made towards rental
SELECT T.RentalID,
R.Rental_Type,
T.[Check],
T.Cash,
T.CreditCard
FROM Transactions AS T
LEFT OUTER JOIN Rental AS R ON T.RentalID = R.RentalID;

 



--7. List of car make & models available at each location
SELECT I.LocationID,
V.Make,
V.Model
FROM Inventory AS I
INNER JOIN Vehicle AS V ON I.VIN = V.VIN
WHERE AvailabilityFlag = 'Y';
 
--8. Information of employees based on location 
SELECT CONCAT(E.FirstName, ' ', E.MiddleName, ' ', E.LastName) AS FullName,
E.EmployeeType,
L.LocationID
FROM Employees AS E
LEFT OUTER JOIN Location AS L ON E.LocationID = L.LocationID
ORDER BY L.LocationID;
 
--9. Contact Info of Customers
SELECT C.CustomerID, 
CE.EmailAddress 
FROM Customers AS C
LEFT OUTER JOIN CustomerEmail AS CE ON C.CustomerID = CE.CustomerID
ORDER BY C.CustomerID;

--10. The date of a Specific Rental
SELECT R.CustomerID, 
R.RentalDate
FROM Rental AS R
WHERE R.CustomerID =3;

--View to take out SSN for security purposes
CREATE VIEW EmployeeInfo AS
SELECT E.EmployeeID,
CONCAT(E.FirstName, ' ', E.MiddleName, ' ', E.LastName) AS FullName,
E.LocationID,
E.EmployeeType
FROM Employees AS E;

--Create a view to retrieve customer who have email
CREATE VIEW CustomerWithEmail AS
SELECT CE.CustomerID,
	   CE.EmailAddress
FROM CustomerEmail AS CE
WHERE CE.PrimaryEmailFlag != 'Y';

SELECT * 
FROM CustomerWithEmail;


--Stored Procedures

--Procedure to get Customer info from Email

CREATE PROCEDURE GetCustomerInfo
@CustomerEmail                  VARCHAR(254)
AS
BEGIN
DECLARE @CustomerID INT;
 
SELECT CE.CustomerID,
C.FirstName,
C.LastName
FROM CustomerEmail AS CE
LEFT OUTER JOIN Customers AS C ON CE.CustomerID = C.CustomerID
WHERE CE.EmailAddress = @CustomerEmail
END;

--Code for testing Procedure
EXECUTE GetCustomerInfo @CustomerEmail = 'Ronny3@aol.com';
 
--Procedure to add a new customer
 
CREATE PROCEDURE AddNewCustomer
@FirstName               VARCHAR(25),
@LastName                VARCHAR(25),
@LicenseNumber            CHAR(9),
@PhoneNumber        CHAR(10),
@EmailAddress       VARCHAR(254),
@PrimaryEmailFlag   CHAR(1)
 
AS
BEGIN
DECLARE @CustomerID INT;
 
BEGIN TRANSACTION;
INSERT INTO Customers (FirstName, LastName, LicenseNumber, PhoneNumber)
VALUES (@FirstName, @LastName, @LicenseNumber, @PhoneNumber);
SET @CustomerID = SCOPE_IDENTITY();
 
INSERT INTO CustomerEmail (CustomerID, EmailAddress, PrimaryEmailFlag)
VALUES (@CustomerID, @EmailAddress, 'Y');
COMMIT;
 
END;
 
--Code to execute procedure
EXECUTE AddNewCustomer
@FirstName = 'Tom',
@LastName = 'Higgins',
@LicenseNumber = '42143160',
@PhoneNumber = '8019166789',
@EmailAddress = 'TomH23@hotmail.com',
@PrimaryEmailFlag = 'N';
 
--Procedure used to get EmployeeID by typing HireDate

CREATE PROCEDURE spHireDateLookUp
@HireDate		date
AS
BEGIN

DECLARE @EmployeeID INT;
SET @EmployeeID = ( SELECT e.EmployeeID
					FROM Employees AS e 
					WHERE HireDate = @HireDate)
END;

--Code to test procedure
EXECUTE spHireDateLookUp @HireDate = '2019-01-20';



