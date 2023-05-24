USE master;
GO

DROP DATABASE IF EXISTS Cars_R_Us_4;
CREATE DATABASE Cars_R_Us_4;

USE Cars_R_Us_4;

--Create Customers table
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers
(CustomerID			SMALLINT NOT NULL IDENTITY(1,1),
FirstName			VARCHAR(25) NOT NULL,
LastName			VARCHAR(25) NOT NULL,
LicenseNumber		CHAR(9) NOT NULL,
PhoneNumber			CHAR(10) NOT NULL,
CONSTRAINT PK_Customers_CustomerID PRIMARY KEY (CustomerID)
);

--Create CustomerEmail Table
DROP TABLE IF EXISTS CustomerEmail;
CREATE TABLE CustomerEmail
(CustomerID			SMALLINT NOT NULL,
EmailAddress		VARCHAR(254) NOT NULL,
PrimaryEmailFlag	CHAR(1) NOT NULL DEFAULT 'Y',
CONSTRAINT PK_CustomerEmail_CustomerID_EmailAddress PRIMARY KEY (CustomerID,
	EmailAddress),
CONSTRAINT FK_CustomerEmail_CustomerID FOREIGN KEY (CustomerID) REFERENCES
	Customers (CustomerID),
CONSTRAINT CHECK_CustomerEmail_PrimaryEmailFlag CHECK (PrimaryEmailFlag IN
	('Y', 'N'))
);

--Create Location table
DROP TABLE IF EXISTS Location;
CREATE TABLE Location
(LocationID			SMALLINT NOT NULL IDENTITY (1,1),
StreetAddress		VARCHAR(35) NOT NULL,
City				VARCHAR(30) NOT NULL,
[State]				CHAR(2) NOT NULL,
ZipCode				VARCHAR(10) NOT NULL,
ManagerID			SMALLINT NOT NULL
CONSTRAINT PK_Location_LocationID PRIMARY KEY (LocationID)
);

ALTER TABLE [Location]
DROP COLUMN ManagerID;


--Create Vehicle table
DROP TABLE IF EXISTS Vehicle
CREATE TABLE Vehicle
(VIN				VARCHAR(17) NOT NULL,
Make				VARCHAR(50) NOT NULL,
Model				VARCHAR(50) NOT NULL,
Color				VARCHAR(30) NOT NULL,
CONSTRAINT PK_Vehicle_VIN PRIMARY KEY (VIN)
);

ALTER TABLE Vehicle
ADD LicensePlate VARCHAR(7) NOT NULL;



--Create Inventory table
DROP TABLE IF EXISTS Inventory;
CREATE TABLE Inventory
(LocationID			SMALLINT NOT NULL,
VIN					VARCHAR(17) NOT NULL,
AvailabilityFlag	CHAR(1) NOT NULL
CONSTRAINT PK_Inventory_LocationID_VIN PRIMARY KEY (LocationID, VIN),
CONSTRAINT FK_Inventory_VIN		FOREIGN KEY (VIN) REFERENCES Vehicle (VIN),
CONSTRAINT CHECK_Inventory_AvailabilityFlag CHECK (AvailabilityFlag IN ('Y', 'N'))
);

--Create Rental table
DROP TABLE IF EXISTS Rental;
CREATE TABLE Rental
(RentalID			SMALLINT NOT NULL IDENTITY(1,1),
CustomerID			SMALLINT NOT NULL,
VIN					VARCHAR(17) NOT NULL,
LocationID			SMALLINT NOT NULL,
RentalDate			DATE NOT NULL,
ReturnDate			DATE NOT NULL,
Rental_Type			CHAR(1) NOT NULL
CONSTRAINT PK_Rental_RentalID PRIMARY KEY (RentalID),
CONSTRAINT FK_Rental_CustomerID FOREIGN KEY (CustomerID) REFERENCES
	Customers (CustomerID),
CONSTRAINT FK_Rental_VIN FOREIGN KEY (VIN) REFERENCES
	Vehicle (VIN),
CONSTRAINT FK_Rental_LocationID FOREIGN KEY (LocationID) REFERENCES
	Location (LocationID)
);

ALTER TABLE Rental
ADD InsuranceFlag CHAR(1) NOT NULL DEFAULT 'N',
CONSTRAINT CHECK_Rental_InsuranceFlag CHECK (InsuranceFlag IN ('Y', 'N'));



--Create Walk Ins table 
DROP TABLE IF EXISTS WalkIns;
CREATE TABLE WalkIns
(RentalID		SMALLINT NOT NULL,
WalkInDate		DATE NOT NULL,
CONSTRAINT PK_WalkIns_RentalID PRIMARY KEY (RentalID)
);

--Create Reservations table
DROP TABLE IF EXISTS Reservations;
CREATE TABLE Reservations
(RentalID		SMALLINT NOT NULL,
ReservationNumber	SMALLINT NOT NULL IDENTITY(1,1),
CONSTRAINT PK_Reservations_RentalID PRIMARY KEY (RentalID)
);

--Create Transaction table
DROP TABLE IF EXISTS Transcations;
CREATE TABLE Transactions
(TransactionID			SMALLINT NOT NULL IDENTITY(1,1),
CustomerID				SMALLINT NOT NULL,
RentalID				SMALLINT NOT NULL,
[Date]					DATE NOT NULL,
AmountTotal				DECIMAL(6,2) NOT NULL,
[Check]					CHAR(1) NOT NULL DEFAULT '0',
Cash					CHAR(1) NOT NULL DEFAULT '0',
CreditCard				CHAR(1) NOT NULL DEFAULT '0',
CONSTRAINT PK_Transactions_TransactionID PRIMARY KEY (TransactionID),
CONSTRAINT FK_Transactions_CustomerID FOREIGN KEY (CustomerID) REFERENCES
	Customers (CustomerID),
CONSTRAINT FK_Transactions_RentalID FOREIGN KEY (RentalID) REFERENCES
	Rental (RentalID),
CONSTRAINT CHECK_Transactions_Check CHECK ([Check] IN ('0', '1')),
CONSTRAINT CHECK_Transactions_Cash CHECK (Cash IN ('0', '1')),
CONSTRAINT CHECK_Transactions_CreditCard CHECK (CreditCard IN ('0', '1'))
);

--Create Check Table
DROP TABLE IF EXISTS [Check];
CREATE TABLE [Check]
(TransactionID			SMALLINT NOT NULL,
CheckNumber				INT NOT NULL,
CheckAmount				DECIMAL(6,2) NOT NULL
CONSTRAINT PK_Check_TransactionID PRIMARY KEY (TransactionID)
);


--Create Cash Table
DROP TABLE IF EXISTS Cash;
CREATE TABLE Cash
(TransactionID			SMALLINT NOT NULL,
CashAmount				DECIMAL(6,2) NOT NULL
CONSTRAINT PK_Cash_TransactionID PRIMARY KEY (TransactionID)
);

--Create CreditCard Table
DROP TABLE IF EXISTS CreditCard;
CREATE TABLE CreditCard
(TransactionID			SMALLINT NOT NULL,
CCNumber				INT NOT NULL,
CCAmount				DECIMAL(6,2) NOT NULL
CONSTRAINT PK_CreditCard_TransactionID PRIMARY KEY (TransactionID)
);
ALTER TABLE CreditCard
ALTER COLUMN CCNumber VARCHAR(16);

--Create Employees table
DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees
(EmployeeID			SMALLINT NOT NULL IDENTITY(1,1),
LocationID			SMALLINT NOT NULL,
FirstName			VARCHAR(25) NOT NULL,
MiddleName			VARCHAR DEFAULT NULL,
LastName			VARCHAR(25) NOT NULL,
SSN					SMALLINT NOT NULL,
HireDate			DATE NOT NULL,
EmployeeType		CHAR(1) NOT NULL DEFAULT 'S',
CONSTRAINT PK_Employees_EmployeeID PRIMARY KEY (EmployeeID),
CONSTRAINT FK_Employees_LocationID FOREIGN KEY (LocationID) REFERENCES
	[Location] (LocationID),
CONSTRAINT CHECK_Employees_EmployeeType CHECK (EmployeeType IN ('S', 'M', 'R')),
);
ALTER TABLE Employees
ALTER COLUMN SSN VARCHAR(9) NOT NULL;

ALTER TABLE Employees
ALTER COLUMN MiddleName VARCHAR(25) NULL;

--Create Manager table
DROP TABLE IF EXISTS Manager;
CREATE TABLE Manager
(EmployeeID			SMALLINT NOT NULL,
ManagerID			SMALLINT NOT NULL IDENTITY(1,1),
LocationID			SMALLINT NOT NULL,
CONSTRAINT PK_Manager_EmployeeID PRIMARY KEY (EmployeeID),
CONSTRAINT FK_Manager_LocationID FOREIGN KEY (LocationID) REFERENCES
	[Location] (LocationID)
);
--Create RepairTechnician table
DROP TABLE IF EXISTS RepairTechnician;
CREATE TABLE RepairTechnician
(EmployeeID			SMALLINT NOT NULL,
RepairTechID		SMALLINT NOT NULL IDENTITY(1,1),
LocationID			SMALLINT NOT NULL
CONSTRAINT PK_RepairTechnician_EmployeeID_RepairTechID PRIMARY KEY (EmployeeID, RepairTechID),
CONSTRAINT FK_RepariTechnician_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES
	Employees (EmployeeID),
CONSTRAINT FK_RepairTechnician_LocationID FOREIGN KEY (LocationID) REFERENCES
	Location (LocationID)
);


--Create Repair table
DROP TABLE IF EXISTS Repair;
CREATE TABLE Repair
(RepairTechID			SMALLINT NOT NULL,
VIN					    VARCHAR(17) NOT NULL,
[Description]			VARCHAR(254),
CONSTRAINT PK_Repair_RepairTechID_VIN PRIMARY KEY (RepairTechID, VIN),
CONSTRAINT FK_Repair_VIN FOREIGN KEY (VIN) REFERENCES
	Vehicle (VIN),
);


--Create Department table
DROP TABLE IF EXISTS Department;
CREATE TABLE Department
(DepartmentID		SMALLINT NOT NULL IDENTITY(1,1),
LocationID			SMALLINT NOT NULL,
DepartmentCode		CHAR(1) NOT NULL,
CONSTRAINT PK_Department_DepartmentID PRIMARY KEY (DepartmentID),
CONSTRAINT CHECK_Department_DepartmentCode CHECK (DepartmentCode IN ('C', 'S'))
);


--Create CustomerService table
DROP TABLE IF EXISTS CustomerService;
CREATE TABLE CustomerService
(DepartmentID		SMALLINT NOT NULL,
CSPhoneExtension	CHAR(5) NOT NULL,
CONSTRAINT PK_CustomerService_DepartmentID PRIMARY KEY (DepartmentID),
CONSTRAINT FK_CustomerService_DepartmentID FOREIGN KEY (DepartmentID) REFERENCES
	Department (DepartmentID)
);

--Create Sales table
DROP TABLE IF EXISTS Sales;
CREATE TABLE Sales
(DepartmentID		SMALLINT NOT NULL,
SPhoneExtension		CHAR(5) NOT NULL,
CONSTRAINT PK_Sales_DepartmentID PRIMARY KEY (DepartmentID),
CONSTRAINT FK_Sales_DepartmentID FOREIGN KEY (DepartmentID) REFERENCES
	Department (DepartmentID)
);



