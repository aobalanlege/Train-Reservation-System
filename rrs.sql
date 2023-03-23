CREATE TABLE Passenger ( 
First_Name Varchar(50) Not Null, 
Last_Name Varchar(50) Not Null, 
Address Varchar(100) Not Null, 
City Varchar(50) Not Null, 
County Varchar(50) Not Null, 
Phone_Number Char(12), 
SSN Char(9) Not Null, 
Birth_Date Date Not Null, 
Primary Key (SSN) ); 
 

CREATE TABLE TrainStatus( 
Train_Date Date Not Null, 
Train_Name Text Not Null, 
PremiumSeatsAvailable Integer,
GenSeatsAvailable Integer,
PremiumSeatsOccupied Integer Not Null,
GenSeatsOccupied Integer Not Null,
Primary Key (Train_Name) ); 

 

CREATE TABLE Train( 
Train_Name Varchar(50) Not Null, 
Train_Number Int Not Null, 
Premium_Fare Decimal(10,2) Not Null, 
General_Fare Decimal(10,2) Not Null, 
Source_Station Varchar(50) Not Null, 
Destination_Station Varchar(50) Not Null, 
Available_on Varchar(50) Not Null, 
Primary Key (Train_Number), 
Foreign Key (Train_Name) References TrainStatus (Train_Name) ); 

 

CREATE TABLE Booked ( 
Passenger_SSN Char(9) Not Null, 
Train_Number Int Not Null, 
Ticket_Type Varchar(10) Not Null, 
Reservation_Status Varchar(10) Not Null, 
Booking_Date Date Null, 
Foreign Key (Passenger_SSN) References Passenger(SSN), 
Foreign Key (Train_Number) References Train(Train_Number) ); 



INSERT INTO Train (Train_Number, Train_Name, Premium_Fare, General_Fare, Source_Station, Destination_Station, Available_On) VALUES 
  (1, 'Orient Express', 800, 600, 'Paris', 'Istanbul', 'Weekdays'),
  (2, 'Flying Scotsman', 4000, 3500, 'Edinburgh', 'London', 'Friday, Saturday, Sunday'),
  (3, 'Golden Arrow', 980, 860, 'Victoria', 'Dover', 'Monday, Tuesday, Wednesday'),
  (4, 'Golden Chariot', 4300, 3800, 'Bangalore', 'Goa', 'Saturday, Sunday'),
  (5, 'Maharaja Express', 5980, 4510, 'Delhi', 'Mumbai', 'Wednesday, Thursday, Friday');




INSERT INTO Passenger (First_Name, Last_Name, Address, City, County, Phone_Number, Ssn, Birth_Date)
VALUES 
('James', 'Butt', '6649 N Blue Gum St', 'New Orleans', 'Orleans', '504-845-1427', '264816896', '1968-10-10'),
('Josephine', 'Darakjy', '4 B Blue Ridge Blvd', 'Brighton', 'Livingston', '810-374-9840', '240471168', '1975-11-01'),
('Art', 'Venere', '8 W Cerritos Ave #54', 'Bridgeport', 'Gloucester', '605-264-4130', '285200976', '1982-11-13'),
('Lenna', 'Paprocki', '639 Main St', 'Anchorage', 'Anchorage', '907-921-2010', '309323096', '1978-08-09'),
('Donette', 'Foller', '34 Center St', 'Hamilton', 'Butler', '513-549-4561', '272610795', '1990-06-11'),
('Simona', 'Morasca', '3 Mcauley Dr', 'Ashland', 'Ashland', '419-800-6759', '250951162', '1994-08-15'),
('Mitsue', 'Tollner', '7 Eads St', 'Chicago', 'Cook', '773-924-8565', '272913578', '1984-07-04'),
('Leota', 'Dilliard', '7 W Jackson Blvd', 'San Jose', 'Santa Clara', '408-813-1105', '268682534', '1991-05-09'),
('Sage', 'Wieser', '5 Boston Ave #88', 'Sioux Falls', 'Minnehaha', '605-794-4895', '310908858', '1982-02-25'),
('Kris', 'Marrier', '228 Runamuck Pl #2808', 'Baltimore', 'Baltimore City', '410-804-4694', '322273872', '1956-04-04'),
('Minna', 'Amigon', '2371 Jerrold Ave', 'Kulpsville', 'Montgomery', '215-422-8694', '256558303', '1995-09-09'),
('Abel', 'Maclead', '37275 St Rt 17m M', 'Middle Island', 'Suffolk', '631-677-3675', '302548590', '1960-11-05'),
('Kiley', 'Caldarera', '25 E 75th St #69', 'Los Angeles', 'Los Angeles', '310-254-3084', '284965676', '1981-05-09'),
('Graciela','Ruta','98 Connecticut Ave Nw','Chagrin Falls','Geauga','440-579-7763','277292710','1982-02-25'),
('Cammy','Albares','56 E Morehead St','Laredo','Webb','956-841-7216','331160133','1956-04-04'),
('Mattie','Poquette','73 State Road 434 E','Phoenix','Maricopa','605-953-6360','331293204','1995-09-09'),
('Meaghan','Garufi','69734 E Carrillo St','Mc Minnville','Warren','931-235-7959','290123298','1960-11-02'),
('Gladys','Rim','322 New Horizon Blvd','Milwaukee','Milwaukee','414-377-2880','286411536','1991-05-09'),
('Yuki','Whobrey','1 State Route 27','Taylor','Wayne','313-341-4470','294860856','1985-02-25'),
('Fletcher','Flosi','394 Manchester Blvd','Rockford','Winnebago','815-426-5657','317434088','1961-04-04');


INSERT INTO TrainStatus (Train_Date, Train_Name, PremiumSeatsAvailable, GenSeatsAvailable, PremiumSeatsOccupied, GenSeatsOccupied)
VALUES 
('2022-02-19', 'Orient Express', 10, 10, 0, 0),
('2022-02-20', 'Flying Scottsman', 8, 5, 2, 5),
('2022-02-21', 'Guwahati Express', 7, 6, 3, 4),
('2022-02-21', 'Golden Chariot', 6, 3, 4, 7);


INSERT INTO Booked (Passenger_SSN, Train_Number, Ticket_Type, Reservation_Status, Booking_Date) VALUES
(264816896, 3, 'Premium', 'Booked', NULL),
(240471168, 2, 'General', 'Booked', NULL),
(285200976, 4, 'Premium', 'Booked', NULL),
(285200976, 2, 'Premium', 'Booked', NULL),
(317434088, 2, 'Premium', 'Booked', NULL),
(310908858, 2, 'General', 'Booked', NULL),
(322273872, 2, 'General', 'Booked', NULL),
(256558303, 3, 'Premium', 'WaitList', NULL),
(302548590, 2, 'General', 'WaitList', NULL),
(284965676, 3, 'Premium', 'WaitList', NULL),
(277292710, 3, 'General', 'WaitList', NULL),
(331160133, 3, 'General', 'WaitList', NULL),
(331293204, 3, 'General', 'WaitList', NULL),
(290123298, 3, 'General', 'WaitList', NULL),
(286411536, 4, 'Premium', 'Booked', NULL),
(294860856, 4, 'Premium', 'Booked', NULL),
(317434088, 4, 'Premium', 'Booked', NULL),
(310908858, 4, 'Premium', 'Booked', NULL),
(322273872, 4, 'Premium', 'Booked', NULL),
(256558303, 4, 'Premium', 'Booked', NULL),
(302548590, 4, 'Premium', 'Booked', NULL),
(284965676, 4, 'General', 'Booked', NULL),
(277292710, 4, 'General', 'Booked', NULL),
(331160133, 4, 'General', 'Booked', NULL),
(331293204, 4, 'General', 'Booked', NULL);