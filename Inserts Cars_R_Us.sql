USE master;
GO

DROP DATABASE IF EXISTS Cars_R_Us_4;
CREATE DATABASE Cars_R_Us_4;

USE Cars_R_Us_4;

INSERT INTO Customers (FirstName, LastName, LicenseNumber, PhoneNumber)
VALUES ('Perry', 'Carry', '400138831', '8015556678'),
('Sheila', 'Wetherbee', '123890234', '3856679087'),
('Kieth', 'Hill', '234561289', '8019790067'),
('Sally', 'Smith', '456123890', '9209139430'),
('Kelly', 'Hallaway', '234900087', '8088485942'),
('Ronald', 'Nelson', '455590453', '8304210538'),
('Victor', 'Davis', '311190456', '7089870160'),
('Leslie', 'Brown', '300096577', '7173924414'),
('Rachel', 'Taylor', '678000444', '4439734429'),
('Ben', 'Burger', '900045699', '5162777287'),
('Tracy', 'Morris', '563334567', '5023141541'),
('Donna', 'Warner', '700998122', '3139215278'),
('Michael', 'Davis', '333467888', '2819672490'),
('Brittany', 'Schmit', '455327789', '5077799892'),
('Allen', 'Wood', '667770932', '8108098120'),
('William', 'Baldwin', '360099844', '9144095625'),
('Mary', 'Jones', '112133400', '7405515249'),
('Leon', 'Burton', '69903335', '5208449467'),
('Julie', 'Clark', '999098566', '7274090950'),
('Jacob', 'Jones', '55567221', '3053526460'),
('Carol', 'Sanders', '999023411', '5037698315'),
('Karen', 'Smith', '890334555', '9374148169'),
('Victor', 'Davis', '311190456', '7089870160'),
('Theodore', 'Ferguson', '866670333', '6302029116'),
('Jody', 'Paul', '111288066', '4253151184'),
('Joseph', 'Hawkins', '000911234', '9073793937'),
('Chantal', 'Leonard', '444512009', '5018196221'),
('Amy', 'Addams', '566722244', '7195411773'),
('William', 'Tarp', '778000344', '9703017902'),
('Elliot', 'Alverez', '77780477', '7033470580'),
('Robert', 'McKee', '112118889', '7032332258'),
('Ryan', 'Reeves', '556000334', '9187699491'),
('Rita', 'Ashley', '789346001', '9048130637'),
('Susan', 'Matthews', '900087661', '8576541932'),
('Adam', 'Stone', '888945533', '9188598758'),
('Frank', 'Spitz', '90977732', '9046126742'),
('Davis', 'Lewis', '994445800', '5012374616'),
('Jonah', 'Hill', '000977539', '9127225592'),
('William', 'Willis', '877776301', '9146308160'),
('Kathy', 'Rodriguez', '441231109', '5015516941');

SELECT *
FROM Customers;

INSERT INTO CustomerEmail (CustomerID, EmailAddress, PrimaryEmailFlag)
VALUES (1, 'PCarry@gmail.com', 'Y'),
(2, 'ShellyBee@yahoo.com', 'Y'),
(2, 'Shelia.Wetherbee@gmail.com', 'N'),
(3, 'KeithHill@msn.com', 'Y'),
(4, 'SallySmith002@gmail.com', 'Y'),
(5, 'KHallaway11@yahoo.com', 'N'),
(6, 'Ronny3@aol.com', 'Y'),
(7, 'Davis.Victor@gmail.com', 'Y'),
(7, 'VictorD@msn.com', 'N'),
(9, 'Rachel.Tay55@gmail.com', 'Y'),
(10, 'Burger001@aol.com', 'N'),
(11, 'T.Morris@yahoo.com', 'Y'),
(12, 'DDWarner@msn.com', 'N'),
(12, 'DonnaW@gmail.com', 'Y'),
(14, 'BritSchmit@aol.com', 'Y'),
(15, 'AllenWood22@gmail.com', 'Y'),
(16, 'WillisBald@outlook.com', 'N'),
(16, 'William.Baldwin@yahoo.com', 'Y'),
(17, 'MaryJ@hotmail.com', 'Y'),
(18, 'Leon.B23@aol.com', 'Y'),
(19, 'J.Clark@yahoo.com', 'N'),
(20, 'JJ.Fresh33@hotmail.com', 'N'),
(21, 'CarolSSanders@outlook.com', 'Y'),
(22, 'k.smith01@msn.com', 'Y'),
(23, 'DavisV22@gmail.com', 'N'),
(24, 'theo.ferg@outlook.com', 'Y'),
(25, 'J.Paul001@hotmail.com', 'N'),
(25, 'Paul.Jody@gmail.com', 'Y'),
(27, 'Chantal2023@gmail.com', 'Y'),
(28, 'a.addams@aol.com', 'Y'),
(29, 'WillyT96@msn.com', 'N'),
(30, 'ElliotAlverez27@yahoo.com', 'Y'),
(31, 'Robby.Mckee33@gmail.com', 'Y'),
(33, 'RitaReads05@hotmail.com', 'N'),
(34, 'suzy.matthews@msn.com', 'Y'),
(36, 'Spitz.Franky00@yahoo.com', 'N'),
(38, 'j.hill99@gmail.com', 'Y'),
(39, 'willywillis@hotmail.com', 'Y'),
(40, 'K.Rodriguez@msn.com', 'Y'),
(40, 'Roriguez01@yahoo.com', 'N');

SELECT *
FROM CustomerEmail;

INSERT INTO Vehicle (VIN, Make, Model, Color, LicensePlate)
VALUES ('JM1DE1LY3C0137285', 'Honda', 'Rebel', 'Silver', 'TRX747' ),
('1GCSKTE3XAZ243965', 'Chevrolet', 'Tiltmaster', 'Grey', 'DUZ843'),
('1GTEK19T94E269710', 'BMW', '750I', 'White', 'XVF370'),
('2C4GM68475R335217', 'Forf', 'GT', 'Silver', '697239J'),
('1G8ZH5287VZ394108', 'Chevrolet', 'Chevy Pickup', 'Blue', '277457L'),
('1B3HB48B57D104532', 'Dodge', 'Dakota', 'White', 'HSO1200'),
('3VW3L7AJ6EM203691', 'Lexus', 'GS450H', 'Black', 'HMT1970'),
('5XYZU3LB0DG021375', 'Kia', 'Magentis', 'White', 'WND729'),
('1G2HZ5139HW253765', 'Toyota', '4Runner', 'Olive', 'RSG614'),
('1LNHM81W5YY804117', 'Mazda', 'Protege', 'Black', 'WSC115'),
('WBAPM73569A333052', 'VolksWagen', 'GTI', 'Red', 'XEF739'),
('KMHDU4AD8AU059835', 'Audi', 'A4', 'Silver', '894YRL'),
('1GKEK63U72J122731', 'Audi', 'A6', 'White', '963YHP'),
('KL8CD6S93EC426666', 'Hummer', 'H2', 'Blue', '414YKU'),
('3GNEC13T02G132285', 'Toyota', 'Land Cruiser', 'Black', '675KJK');


SELECT *
FROM Vehicle;


INSERT INTO [Location] (StreetAddress, City, State, ZipCode)
VALUES ('3262 Oak Ave', 'Richmond', 'VA', '23219'),
('4097 Yorkie Lane', 'Eulonia', 'GA', '31305'),
('4138 Turkey Road', 'New York', 'NY', '10016'),
('1076 Layman Court', 'Pheonix', 'AZ', '85017'),
('4194 Corny Lane', 'Austin', 'TX', '73301'),
('2783 Caldwell Ave', 'Memphis', 'TN', '38110'),
('2603 Maple Street', 'Los Angeles', 'CA', '90017'),
('4626 Jones Street', 'Dallas', 'TX', '75201'),
('770 River Way', 'Salt Lake City', 'UT', '84104'),
('3209 Ever Lane', 'Sunrise', 'FL', '33351'),
('803 Zappia Drive', 'Independence', 'KY', '41051'),
('679 Hanover Street', 'Westbury', 'NY', '11590'),
('1451 Harvard Ave', 'Minneapolis', 'MN', '55415'),
('4255 George Street', 'Gainesville', 'FL', '32601'),
('3507 Lonely Oak Drive', 'Monroeville', 'AL', '36460');

SELECT *
FROM [Location];

INSERT INTO Inventory (LocationID, VIN, AvailabilityFlag)
VALUES(2, 'JM1DE1LY3C0137285', 'Y'),
(3, '1GCSKTE3XAZ243965', 'Y'),
(4, '1GTEK19T94E269710', 'N'),
(4, 'JM1DE1LY3C0137285', 'N'),
(4, '2C4GM68475R335217', 'Y'),
(5, '1G8ZH5287VZ394108', 'Y'),
(6, '1G8ZH5287VZ394108', 'N'),
(7, '1B3HB48B57D104532', 'Y'),
(8, '1B3HB48B57D104532', 'N'),
(9, '1B3HB48B57D104532', 'N'),
(10, '3VW3L7AJ6EM203691', 'Y'),
(10, '5XYZU3LB0DG021375', 'Y'),
(10, 'JM1DE1LY3C0137285', 'N'),
(11, '5XYZU3LB0DG021375', 'N'),
(12, 'JM1DE1LY3C0137285', 'Y'),
(12, '1G2HZ5139HW253765', 'Y'),
(13, '2C4GM68475R335217', 'N'),
(14, '1G2HZ5139HW253765', 'N'),
(15, 'JM1DE1LY3C0137285', 'N'),
(15, '1LNHM81W5YY804117', 'Y'),
(2, '1LNHM81W5YY804117', 'N'),
(2, '2C4GM68475R335217', 'N'),
(3, 'JM1DE1LY3C0137285', 'N'),
(3, 'WBAPM73569A333052', 'Y'),
(5, 'KMHDU4AD8AU059835', 'Y'),
(4, 'WBAPM73569A333052', 'N'),
(6, '1GKEK63U72J122731', 'Y'),
(7, 'JM1DE1LY3C0137285', 'Y'),
(7, 'KL8CD6S93EC426666', 'N'),
(8, '1GKEK63U72J122731', 'N'),
(8, 'KL8CD6S93EC426666', 'Y'),
(8, '3GNEC13T02G132285', 'Y'),
(5, '3GNEC13T02G132285', 'N'),
(2, 'WBAPM73569A333052', 'N'),
(13, '1GKEK63U72J122731', 'N'),
(13, 'JM1DE1LY3C0137285', 'N'),
(9, '3GNEC13T02G132285', 'N'),
(9, '1LNHM81W5YY804117', 'N'),
(10, '1GKEK63U72J122731', 'N'),
(11, 'WBAPM73569A333052', 'N');

SELECT *
FROM Inventory;


INSERT INTO Rental (CustomerID, VIN, LocationID, RentalDate, ReturnDate, Rental_Type, InsuranceFlag)
VALUES (1, 'JM1DE1LY3C0137285', 2, '01/23/2021', '01/25/2021', 'W', 'Y'),
(2, '1GCSKTE3XAZ243965', 3, '01/26/2021', '01/27/2021', 'R', 'N'),
(3, 'JM1DE1LY3C0137285', 4, '02/01/2021', '02/05/2021', 'W', 'N'),
(4, '2C4GM68475R335217', 2, '02/10/2021', '02/16/2021', 'W', 'Y'),
(5, '1G8ZH5287VZ394108', 2, '02/23/2021', '03/01/2021', 'W', 'Y'),
(6, '1B3HB48B57D104532', 3, '02/22/2021', '03/02/2021', 'R', 'Y'),
(7, 'JM1DE1LY3C0137285', 2, '03/12/2021', '03/17/2021', 'R', 'N'),
(8, '3VW3L7AJ6EM203691', 2, '03/10/2021', '03/15/2021', 'R', 'Y'),
(9, '5XYZU3LB0DG021375', 6, '02/25/2021', '03/12/2021', 'W', 'Y'),
(10, '1B3HB48B57D104532', 2, '03/10/2021', '03/18/2021', 'W', 'Y'),
(11, 'JM1DE1LY3C0137285', 8, '03/29/2021', '04/01/2021', 'R', 'N'),
(12, '1G2HZ5139HW253765', 9, '04/01/2021', '04/7/2021', 'W', 'Y'),
(13, 'JM1DE1LY3C0137285', 10, '04/12/2021', '04/17/2021', 'W', 'Y'),
(14, '1LNHM81W5YY804117', 2, '04/23/2021', '04/24/2021', 'W', 'Y'),
(15, 'WBAPM73569A333052', 2, '04/29/2021', '05/01/2021', 'R', 'Y'),
(16, 'JM1DE1LY3C0137285', 11, '03/20/2021', '03/27/2021', 'W', 'Y'),
(17, '1GKEK63U72J122731', 12, '02/09/2021', '02/18/2021', 'W', 'Y'),
(18, 'KMHDU4AD8AU059835', 12, '03/22/2021', '03/25/2021', 'R', 'Y'),
(19, 'KL8CD6S93EC426666', 12, '04/25/2021', '04/27/2021', 'R', 'Y'),
(20, '1G8ZH5287VZ394108', 15, '04/24/2021', '04/28/2021', 'R', 'Y'),
(21, 'JM1DE1LY3C0137285', 13, '04/12/2021', '04/24/2021', 'W', 'Y'),
(22, '3VW3L7AJ6EM203691', 12, '04/06/2021', '04/12/2021', 'W', 'Y'),
(23, '1B3HB48B57D104532', 13, '04/29/2021', '05/03/2021', 'W', 'N'),
(24, '5XYZU3LB0DG021375', 8, '04/17/2021', '04/29/2021', 'W', 'N'),
(25, '1LNHM81W5YY804117', 8, '05/01/2021', '05/06/2021', 'R', 'Y'),
(26, 'WBAPM73569A333052', 9, '05/03/2021', '05/12/2021', 'W', 'Y'),
(27, 'JM1DE1LY3C0137285', 10, '04/10/2021', '04/25/2021', 'W', 'N'),
(28, 'KMHDU4AD8AU059835', 7, '05/15/2021', '05/22/2021', 'R', 'N'),
(29, 'KMHDU4AD8AU059835', 7, '05/22/2021', '05/25/2021', 'R', 'Y'),
(30, 'JM1DE1LY3C0137285', 11, '05/12/2021', '05/17/2021', 'R', 'Y'),
(31, 'JM1DE1LY3C0137285', 11, '05/17/2021', '05/20/2021', 'W', 'N'),
(32, '1GTEK19T94E269710', 2, '05/12/2021', '05/19/2021', 'W', 'Y'),
(33, 'JM1DE1LY3C0137285', 14, '05/27/2021', '05/30/2021', 'R', 'Y'),
(34, '5XYZU3LB0DG021375', 3, '05/20/2021', '05/22/2021', 'W', 'Y'),
(35, 'KMHDU4AD8AU059835', 8, '05/30/2021', '06/05/2021', 'W', 'N'),
(36, '1GKEK63U72J122731', 10, '06/02/2021', '06/10/2021', 'W', 'N'),
(37, '3VW3L7AJ6EM203691', 5, '05/20/2021', '06/05/2021', 'R', 'Y'),
(38, 'JM1DE1LY3C0137285', 5, '06/10/2021', '06/12/2021', 'W', 'Y'),
(39, '3GNEC13T02G132285', 3, '06/15/2021', '06/19/2021', 'R', 'N'),
(40, '1B3HB48B57D104532', 9, '06/06/2021', '06/12/2021', 'W', 'Y');


SELECT *
FROM Rental;

INSERT INTO WalkIns (RentalID, WalkInDate)
VALUES (1, '01/23/2021'),
(4, '02/01/2021'),
(5, '02/10/2021'),
(6, '02/23/2021'),
(10, '02/25/2021'),
(11, '03/10/2021'),
(13, '04/01/2021'),
(14, '01/02/2021'),
(15, '04/23/2021'),
(17, '03/20/2021'),
(18, '02/09/2021'),
(22, '04/12/2021'),
(23, '04/06/2021'),
(24, '04/29/2021'),
(25, '04/17/2021'),
(27, '05/03/2021'),
(28, '04/10/2021'),
(32, '05/17/2021'),
(35, '05/20/2021'),
(36, '05/30/2021'),
(37, '06/02/2021'),
(39, '06/10/2021'),
(41, '06/06/2021');

SELECT *
FROM WalkIns;

INSERT INTO Reservations (RentalID)
VALUES (3),
(7),
(8),
(9),
(12),
(16),
(19),
(20),
(21),
(26),
(29),
(30),
(31),
(34),
(38),
(40);

SELECT *
FROM Reservations;

INSERT INTO Transactions (CustomerID, RentalID, [Date], AmountTotal, [Check], Cash, CreditCard)
VALUES (1, 1, '01/23/2021', '98.21', '0', '0', '1'),
(2, 3, '01/26/2021', '57.88', '1', '0', '0'),
(3, 4, '02/01/2021', '102.01', '0', '0', '1'),
(4, 5, '02/10/2021', '75.75', '1', '1', '0'),
(5, 6, '02/23/2021', '102.34', '0', '0', '1'),
(6, 7, '02/22/2021', '200.30', '0', '0', '1'),
(7, 8, '03/12/2021', '45.50', '0', '0', '1'),
(8, 9, '03/10/2021', '200.00', '1', '0', '0'),
(9, 10, '02/25/2021', '130.23', '0', '0', '1'),
(10, 11, '03/10/2021', '60.65', '0', '1', '0'),
(11, 12, '03/29/2021', '99.01', '0', '1', '0'),
(12, 13, '04/01/2021', '127.65', '0', '0', '1'),
(13, 14, '04/12/2021', '190.40', '0', '0', '1'),
(14, 15, '04/23/2021', '67.77', '0', '0', '1'),
(15, 16, '04/29/2021', '89.00', '0', '1', '1'),
(16, 17, '03/20/2021', '104.50', '1', '1', '0'),
(17, 18, '02/09/2021', '230.00', '1', '0', '0'),
(18, 19, '03/22/2021', '75.60', '0', '0', '1'),
(19, 20, '04/25/2021', '45.00', '0', '0', '1'),
(20, 21, '04/24/2021', '99.00', '1', '1', '0'),
(21, 22, '04/12/2021', '105.30', '0', '1', '0'),
(22, 23, '04/06/2021', '170.75', '0', '1', '0'),
(23, 24, '04/29/2021', '23.10', '0', '1', '0'),
(24, 25, '04/17/2021', '45.55', '0', '0', '1'),
(25, 26, '05/01/2021', '175.60', '1', '0', '0'),
(26, 27, '05/03/2021', '200.10', '0', '0', '1'),
(27, 28, '04/10/2021', '100.01', '0', '0', '1'),
(28, 29, '05/15/2021', '150.75', '0', '0', '1'),
(29, 30, '05/22/2021', '98.00', '0', '0', '1'),
(30, 31, '05/12/2021', '102.30', '1', '0', '0'),
(31, 32, '05/17/2021', '300.20', '0', '1', '0'),
(32, 33, '05/12/2021', '100.02', '0', '0', '0'),
(33, 34, '05/27/2021', '75.60', '0', '0', '0'),
(34, 35, '05/20/2021', '60.78', '0', '0', '1'),
(35, 36, '05/30/2021', '78.90', '0', '0', '1'),
(36, 37, '06/02/2021', '150.50', '0', '0', '1'),
(37, 38, '05/20/2021', '42.22', '1', '0', '1'),
(38, 39, '06/10/2021', '66.75', '0', '0', '1'),
(39, 40, '06/15/2021', '99.02', '0', '0', '1'),
(40, 41, '06/06/2021', '120.24', '1', '0', '0');



SELECT *
FROM Transactions;




INSERT INTO [Check](TransactionID, CheckNumber, CheckAmount)
VALUES (3, '5568', '57.88'),
(5, '1110', '70.00'),
(9, '3030', '200.00'),
(17, '1445', '100.00'),
(18, '3321', '230.00'),
(21, '7709', '90.00'),
(26, '1445', '175.60'),
(31, '0099', '102.30'),
(38, '4566', '30.00'),
(41, '3499', '120.24');

SELECT *
FROM [Check];

INSERT INTO Cash (TransactionID, CashAmount)
VALUES (5, '5.75'),
(11, '60.65'),
(12, '99.01'),
(16, '60.00'),
(17, '4.50'),
(21, '9.00'),
(22, '105.30'),
(23, '170.75'),
(24, '23.10'),
(32, '300.20');

SELECT *
FROM Cash;

INSERT INTO CreditCard (TransactionID, CCNumber, CCAmount)
VALUES (2, '3121119738100063', '98.21'),
(4, '8754616969363312 ', '102.01'),
(6, '6544967740575360 ', '102.34'),
(7, '2652215857137974 ', '200.30'),
(8, '4862612076079972', '45.50'),
(10, '0167326090505559', '130.23'),
(13, '7293200013595805 ', '127.65'),
(14, '0256691292749522', '190.40'),
(15, '3078899490606000 ', '67.77'),
(16, '1257665899737215', '29.00'),
(19, '2266161795386849', '75.60'),
(20, '5910162985381950', '45.00'),
(25, '1258490635156686', '45.55'),
(27, '0594322065574706', '200.10'),
(28, '2528143495752753', '150.75'),
(29, '0210240436101578', '150.75'),
(30, '1055690336524667', '98.00'),
(35, '4350466386517948', '60.78'),
(36, '7628569143577027', '78.90'),
(37, '9395696071602295', '150.50'),
(38, '0296729879472475', '12.22'),
(39, '3476868954832797', '66.75'),
(40, '6628561771778109', '99.02');

SELECT *
FROM CreditCard;


INSERT INTO Employees (LocationID, FirstName, MiddleName, LastName, SSN, HireDate, EmployeeType)
VALUES (2, 'Calvin', NULL, 'Williams', '422905855', '01/20/2019', 'S'),
(2, 'Kenneth', 'John', 'Dillard', '241091849', '03/04/2016', 'M'),
(3, 'Johnathan', NULL, 'Brewer', '392723003', '02/06/2020', 'M'),
(3, 'Brandi', 'Catherine', 'Bailey', '622515871', '09/15/2020', 'S'),
(3, 'Aaron', 'Brad', 'Caldwell', '694035061', '07/16/2020', 'S'),
(3, 'Richard', NULL, 'Barber', '282460897', '05/15/2019', 'R'),
(4, 'Joseph', 'Adam', 'Ball', '622497351', '01/20/2018', 'S'),
(5, 'April', 'Spring', 'Williams', '548771068', '08/08/2017', 'M'),
(6, 'Joey', 'Alex', 'Jones', '646305953', '03/12/2019', 'R'),
(7, 'Melanie', 'Cynthia', 'Rogers', '765120944', '12/20/2019', 'S'),
(7, 'Harriet', 'Edward', 'Harden', '222346405', '11/12/2020', 'M'),
(8, 'Emma', NULL, 'Jones', '344029084', '06/07/2017', 'R'),
(9, 'Joanne', 'Karen', 'Barns', '329055790', '02/02/2019', 'S'),
(10, 'James', 'Holden', 'Jack', '620603133', '04/12/2017', 'S'),
(8, 'Earl', 'Grey', 'Chapman', '765030682', '09/10/2020', 'S'),
(11, 'Katherine', NULL, 'Castillo', '764326963', '06/17/2016', 'M'),
(11, 'Margaret', 'Jane', 'Rock', '187225671', '11/03/2020', 'S'),
(12, 'Nick', 'Michael', 'Nelson', '440425221', '08/22/2017', 'M'),
(13, 'Mark', NULL, 'Buck', '526560911', '10/12/2016', 'M'),
(14, 'Jessica', 'Jane', 'Jones', '118808020', '05/06/2019', 'S'),
(7, 'Natania', NULL, 'Holland', '220765643', '07/10/2017', 'S'),
(15, 'Sarah', 'Grace', 'Ross', '280382643', '11/12/2020', 'S'),
(15, 'Nicholas', 'Michael', 'Cage', '571587697', '06/23/2016', 'M'),
(16, 'Jason', 'John', 'Cape', '217409398', '12/12/2020', 'M'),
(9, 'Tyler', 'James', 'Powell', '084607022', '03/23/2016', 'R'),
(12, 'Jacob', NULL, 'Mullen', '100946853', '01/22/2018', 'M'),
(13, 'Elliot', NULL, 'Maxwell', '140900857', '10/25/2017', 'S'),
(14, 'Hunter', 'Thomas', 'Gibbons', '648092493', '02/09/2020', 'R'),
(14, 'Amanda', 'Anne', 'Donald', '448106550', '09/20/2017', 'M');

SELECT EmployeeID
FROM Employees;



INSERT INTO Manager (EmployeeID, LocationID)
VALUES (30, 2),
(31, 3),
(36, 5),
(39, 7),
(44, 11),
(46, 12),
(47, 13),
(51, 15),
(52, 16),
(54, 12),
(57, 14);

SELECT *
FROM Manager;


INSERT INTO RepairTechnician (EmployeeID, LocationID)
VALUES (34, 3),
(37, 6),
(40, 8),
(53, 9),
(56, 14);

SELECT *
FROM RepairTechnician;



INSERT INTO Repair (RepairTechID, VIN, Description)
VALUES (1, '1GCSKTE3XAZ243965', 'Cracked windshield repair'),
(1, 'JM1DE1LY3C0137285', 'Buffed out scuffed front bumper'),
(1, 'WBAPM73569A333052', 'Replaced rear right tire'),
(2, '1G8ZH5287VZ394108', 'Oil change and tire roation'),
(2, '1B3HB48B57D104532', 'Replaced rear winshield wiper'),
(2, '1GKEK63U72J122731', 'Repainted scratches on rear left bumper'),
(3, '1B3HB48B57D104532', 'Fixed broken turn signal'),
(3, '1GKEK63U72J122731', 'Replaced car battery '),
(3, '3GNEC13T02G132285', 'Changed air filter'),
(3, 'KL8CD6S93EC426666', 'Replaced side mirror on driver side'),
(4, '1B3HB48B57D104532', 'Tire rotation and oil change'),
(4, '1LNHM81W5YY804117', 'Fixed faulty tire pressure sensor'),
(4, '3GNEC13T02G132285', 'Realigned steering wheel'),
(5, '1G2HZ5139HW253765', 'Replaced cracked rear windshield'),
(5, '3GNEC13T02G132285', 'Fixed squeaking brake pads');

SELECT *
FROM Repair;

INSERT INTO Department (LocationID, DepartmentCode)
VALUES (2, 'C'),
(2, 'S'),
(3, 'C'),
(3, 'S'),
(4, 'C'),
(4, 'S'),
(5, 'C'),
(5, 'S'),
(6, 'C'),
(6, 'S'),
(7, 'C'),
(7, 'S'),
(8, 'C'),
(8, 'S'),
(9, 'C'),
(9, 'S'),
(10, 'C'),
(10, 'S'),
(11, 'C'),
(11, 'S'),
(12, 'C'),
(12, 'S'),
(13, 'C'),
(13, 'S'),
(14, 'C'),
(14, 'S'),
(15, 'C'),
(15, 'S'),
(16, 'C'),
(16, 'S');

SELECT *
FROM Department;


INSERT INTO CustomerService (DepartmentID, CSPhoneExtension)
VALUES (1, '44566'),
(3, '66788'),
(5, '77008'),
(7, '99908'),
(9, '12355'),
(11, '66567'),
(13, '33456'),
(15, '09908'),
(17, '66977'),
(19, '55466'),
(21, '54434'),
(23, '55112'),
(25, '99778'),
(27, '33456'),
(29, '12234');

SELECT * 
FROM CustomerService;

INSERT INTO Sales (DepartmentID, SPhoneExtension)
VALUES (2, '99978'),
(4, '12334'),
(6, '33456'),
(8, '77078'),
(10, '11123'),
(12, '56567'),
(14, '77812'),
(16, '33433'),
(18, '00091'),
(20, '33477'),
(22, '44543'),
(24, '99097'),
(26, '10023'),
(28, '67704'),
(30, '45223');

SELECT * 
FROM Sales;