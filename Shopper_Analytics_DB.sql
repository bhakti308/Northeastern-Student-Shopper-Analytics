CREATE DATABASE DMAPRJ;
use DMAPRJ;
CREATE TABLE AppUser(
    Name VARCHAR(30) PRIMARY KEY
);
CREATE TABLE Acc (
    NU_ID INT PRIMARY KEY,
	NU_EMAIL VARCHAR(50),
    NameUser VARCHAR (30),
    FOREIGN KEY(NameUser) REFERENCES AppUser(Name)
);
CREATE TABLE buyer(
    BuyerName VARCHAR(30) NOT NULL,
	PhoneLocation VARCHAR(20),
    ZipCode INT,
    B_Email VARCHAR(50),
    B_ID INT PRIMARY KEY UNIQUE NOT NULL
);
CREATE TABLE Seller(
     SellerName VARCHAR(30) NOT NULL,
     PhoneLocation VARCHAR(20),
     ZipCode INT,
     S_Email VARCHAR(50),
     S_ID INT PRIMARY KEY UNIQUE NOT NULL
);
CREATE TABLE PurchaseOrder (
     OrderID INT PRIMARY KEY,
     TypE VARCHAR (30),
     ProductName VARCHAR(30),
     Price INT,
     ProductID INT,
     FOREIGN KEY(ProductID) REFERENCES Product(P_ID)
);
CREATE TABLE Product (
P_ID INT PRIMARY KEY,
P_Name VARCHAR (30) UNIQUE,
Descript VARCHAR (80),
Price INT,
P_type VARCHAR(20)
);

CREATE TABLE OrderDetails (
OrderNum INT PRIMARY KEY,
PurchaseBy INT ,
SoldBy INT,
PrdID INT,
FOREIGN KEY(PrdID) REFERENCES Product(P_ID),
FOREIGN KEY(PurchaseBY) REFERENCES buyer(B_ID),
FOREIGN KEY(SoldBy) REFERENCES seller(S_ID)
);

CREATE TABLE ProductStatus(
Status VARCHAR (20) ,
ProdID INT,
FOREIGN KEY(ProdID) REFERENCES product(P_ID)
);

CREATE TABLE BUYS (
BuyerID INT,
SellerID INT,
FOREIGN KEY (BuyerID) REFERENCES buyer(B_ID),
FOREIGN KEY (SellerID) REFERENCES Seller(S_ID)
);

CREATE TABLE SELLS (
BuyID INT,
SellID INT,
FOREIGN KEY (BuyID) REFERENCES buyer(B_ID),
FOREIGN KEY (SellID) REFERENCES Seller(S_ID)
);

INSERT INTO Buyer (BuyerName, PhoneLocation, ZipCode, B_Email, B_ID)
VALUES
('John Doe1', '123-456-7891', '12346', 'john.doe1@email.com', '1000'),
('Jane Smith2', '987-654-3212', '54323', 'jane.smith2@email.com', '1001'),
('Bob Johnson3', '555-123-4568', '67891', 'bob.johnson3@email.com', '1002'),
('Alice Brown4', '222-333-4445', '98766', 'alice.brown4@email.com', '1003'),
('Charlie Davis5', '111-222-3336', '76543', 'charlie.davis5@email.com', '1004'),
('Eva White6', '999-888-7777', '13579', 'eva.white6@email.com', '1005'),
('Frank Miller7', '777-888-9998', '24680', 'frank.miller7@email.com', '1006'),
('Grace Wilson8', '333-555-7779', '86420', 'grace.wilson8@email.com', '1007'),
('Henry Lee9', '444-666-9990', '54321', 'henry.lee9@email.com', '1008'),
('Ivy Johnson10', '555-444-3331', '67890', 'ivy.johnson10@email.com', '1009'),
('Jack Black11', '666-555-4442', '98765', 'jack.black11@email.com', '1010'),
('Karen Davis12', '777-666-5553', '12345', 'karen.davis12@email.com', '1011'),
('Leo Brown13', '888-777-6664', '54323', 'leo.brown13@email.com', '1012'),
('Mia Johnson14', '999-888-7775', '67891', 'mia.johnson14@email.com', '1013'),
('Nick Wilson15', '111-222-3336', '98766', 'nick.wilson15@email.com', '1014'),
('Olivia White16', '222-333-4447', '76543', 'olivia.white16@email.com', '1015'),
('Peter Lee17', '333-444-5558', '24680', 'peter.lee17@email.com', '1016'),
('Quincy Davis18', '444-555-6669', '86420', 'quincy.davis18@email.com', '1017'),
('Rose Black19', '555-666-7770', '54321', 'rose.black19@email.com', '1018'),
('Sam Johnson20', '666-777-8881', '67890', 'sam.johnson20@email.com', '1019'),
('Tina Brown21', '777-888-9992', '98765', 'tina.brown21@email.com', '1020'),
('Ulysses Wilson22', '888-999-1113', '12346', 'ulysses.wilson22@email.com', '1021'),
('Vera White23', '999-111-2224', '54323', 'vera.white23@email.com', '1022'),
('Will Lee24', '111-222-3335', '67891', 'will.lee24@email.com', '1023'),
('Xander Davis25', '222-333-4446', '98766', 'xander.davis25@email.com', '1024'),
('Yara Johnson26', '333-444-5557', '76543', 'yara.johnson26@email.com', '1025'),
('Zack Black27', '444-555-6668', '24680', 'zack.black27@email.com', '1026'),
('Amy Johnson28', '555-666-7779', '86420', 'amy.johnson28@email.com', '1027'),
('Brian Brown29', '666-777-8880', '54321', 'brian.brown29@email.com', '1028'),
('Cathy White30', '777-888-9991', '67890', 'cathy.white30@email.com', '1029'),
('David Lee31', '888-999-1112', '98765', 'david.lee31@email.com', '1030'),
('Emma Davis32', '999-111-2223', '12346', 'emma.davis32@email.com', '1031'),
('Fred Black33', '111-222-3334', '54323', 'fred.black33@email.com', '1032'),
('Gina Johnson34', '222-333-4445', '67891', 'gina.johnson34@email.com', '1033'),
('Harry White35', '333-444-5556', '98766', 'harry.white35@email.com', '1034'),
('Iris Brown36', '444-555-6667', '76543', 'iris.brown36@email.com', '1035'),
('Jackie Lee37', '555-666-7778', '24680', 'jackie.lee37@email.com', '1036'),
('Kevin Davis38', '666-777-8889', '86420', 'kevin.davis38@email.com', '1037'),
('Linda Black39', '777-888-9990', '54321', 'linda.black39@email.com', '1038'),
('Mike Johnson40', '888-999-1111', '67890', 'mike.johnson40@email.com', '1039'),
('Nina White41', '999-111-2222', '98765', 'nina.white41@email.com', '1040'),
('Oscar Brown42', '111-222-3333', '12346', 'oscar.brown42@email.com', '1041'),
('Pam Lee43', '222-333-4444', '54323', 'pam.lee43@email.com', '1042'),
('Quentin Davis44', '333-444-5555', '67891', 'quentin.davis44@email.com', '1043'),
('Rachel Black45', '444-555-6666', '98766', 'rachel.black45@email.com', '1044'),
('Steve Johnson46', '555-666-7777', '76543', 'steve.johnson46@email.com', '1045'),
('Tara White47', '666-777-8888', '24680', 'tara.white47@email.com', '1046'),
('Usher Brown48', '777-888-9999', '86420', 'usher.brown48@email.com', '1047');
SELECT * FROM buyer;
INSERT INTO Seller (SellerName, PhoneLocation, ZipCode, S_Email, S_ID)
VALUES
('Deepak Mehta', '666-777-8880', '54321', 'deepak.mehta@email.com', '110'),
('Sanya Kapoor', '777-888-9991', '67890', 'sanya.kapoor@email.com', '111'),
('Vijay Sharma', '888-999-1112', '98765', 'vijay.sharma@email.com', '112'),
('Neha Singh', '999-111-2223', '12346', 'neha.singh@email.com', '113'),
('Raj Kapoor', '111-222-3334', '54323', 'raj.kapoor@email.com', '114'),
('Anita Reddy', '222-333-4445', '67891', 'anita.reddy@email.com', '115'),
('Kunal Kapoor', '333-444-5556', '98766', 'kunal.kapoor@email.com', '116'),
('Priyanka Verma', '444-555-6667', '76543', 'priyanka.verma@email.com', '117'),
('Aarav Jain', '555-666-7778', '24680', 'aarav.jain@email.com', '118'),
('Sneha Patel', '666-777-8889', '86420', 'sneha.patel@email.com', '119'),
('Arjun Singh', '777-888-9990', '54321', 'arjun.singh@email.com', '120'),
('Riya Khanna', '888-999-1111', '67890', 'riya.khanna@email.com', '121'),
('Vikas Sharma', '999-111-2222', '98765', 'vikas.sharma@email.com', '122'),
('Shivani Das', '111-222-3333', '12346', 'shivani.das@email.com', '123'),
('Karan Mehra', '222-333-4444', '54323', 'karan.mehra@email.com', '124'),
('Simran Singh', '333-444-5555', '67891', 'simran.singh@email.com', '125'),
('Rahul Kapoor', '444-555-6666', '98766', 'rahul.kapoor@email.com', '126'),
('Anjali Verma', '555-666-7777', '76543', 'anjali.verma@email.com', '127'),
('Alok Sharma', '666-777-8888', '24680', 'alok.sharma@email.com', '128'),
('Nisha Patel', '777-888-9999', '86420', 'nisha.patel@email.com', '129'),
('Rajat Kapoor', '111-222-3330', '54321', 'rajat.kapoor@email.com', '130'),
('Sapna Mehra', '222-333-4441', '67890', 'sapna.mehra@email.com', '131'),
('Rohit Singh', '333-444-5552', '98765', 'rohit.singh@email.com', '132'),
('Pooja Verma', '444-555-6663', '12346', 'pooja.verma@email.com', '133'),
('Rajesh Das', '555-666-7774', '54323', 'rajesh.das@email.com', '134'),
('Sarika Jain', '666-777-8885', '67891', 'sarika.jain@email.com', '135'),
('Vivek Sharma', '777-888-9996', '98766', 'vivek.sharma@email.com', '136'),
('Sheetal Kapoor', '888-999-1117', '76543', 'sheetal.kapoor@email.com', '137'),
('Rohan Singh', '999-111-2228', '24680', 'rohan.singh@email.com', '138'),
('Nidhi Verma', '111-222-3339', '86420', 'nidhi.verma@email.com', '139'),
('Sanjay Patel', '222-333-4440', '54321', 'sanjay.patel@email.com', '140'),
('Asha Kapoor', '333-444-5551', '67890', 'asha.kapoor@email.com', '141'),
('Vijay Mehra', '444-555-6662', '98765', 'vijay.mehra@email.com', '142'),
('Preeti Singh', '555-666-7773', '12346', 'preeti.singh@email.com', '143'),
('Avinash Das', '666-777-8884', '54323', 'avinash.das@email.com', '144'),
('Sonali Jain', '777-888-9995', '67891', 'sonali.jain@email.com', '145'),
('Alok Sharma', '888-999-1116', '98766', 'alok.sharma@email.com', '146');
SELECT * FROM Seller;

INSERT INTO Product (P_ID, P_Name, Descript, Price, P_type)
VALUES
    (1, 'T-Shirt', 'Cotton T-Shirt', 20, 'Clothing'),
    (2, 'Smartphone', 'High-end Smartphone', 800, 'Electronics'),
    (3, 'Sofa', 'Leather Sofa', 600, 'Furniture'),
    (4, 'Cookware Set', 'Non-stick Cookware Set', 100, 'Kitchen Utensils'),
    (5, 'Jeans', 'Slim Fit Jeans', 50, 'Clothing'),
    (6, 'Laptop', 'Gaming Laptop', 1200, 'Electronics'),
    (7, 'Coffee Table', 'Wooden Coffee Table', 300, 'Furniture'),
    (8, 'Blender', 'High-Speed Blender', 80, 'Kitchen Utensils'),
    (9, 'Dress', 'Summer Dress', 40, 'Clothing'),
    (10, 'Smartwatch', 'Fitness Smartwatch', 150, 'Electronics'),
    (11, 'Bed Frame', 'Queen-sized Bed Frame', 500, 'Furniture'),
    (12, 'Knife Set', 'Professional Knife Set', 70, 'Kitchen Utensils'),
    (13, 'Jacket', 'Winter Jacket', 70, 'Clothing'),
    (14, 'Tablet', 'Entertainment Tablet', 300, 'Electronics'),
    (15, 'Bookshelf', 'Wooden Bookshelf', 200, 'Furniture'),
    (16, 'Microwave', 'Convection Microwave', 150, 'Kitchen Utensils'),
    (17, 'Sweater', 'Knitted Sweater', 30, 'Clothing'),
    (18, 'Camera', 'DSLR Camera', 700, 'Electronics'),
    (19, 'Desk', 'Office Desk', 250, 'Furniture'),
    (20, 'Toaster', '2-Slice Toaster', 40, 'Kitchen Utensils'),
    (21, 'Dress Shirt', 'Formal Dress Shirt', 35, 'Clothing'),
    (22, 'TV', '4K Smart TV', 1000, 'Electronics'),
    (23, 'Cabinet', 'Storage Cabinet', 400, 'Furniture'),
    (24, 'Crockpot', 'Slow Cooker', 60, 'Kitchen Utensils'),
    (25, 'Skirt', 'Midi Skirt', 25, 'Clothing'),
    (26, 'Headphones', 'Noise-Canceling Headphones', 150, 'Electronics'),
    (27, 'Dining Table', 'Wooden Dining Table', 450, 'Furniture'),
    (28, 'Pressure Cooker', 'Stainless Steel Pressure Cooker', 90, 'Kitchen Utensils'),
    (29, 'Polo Shirt', 'Casual Polo Shirt', 25, 'Clothing'),
    (30, 'Drone', 'Quadcopter Drone', 300, 'Electronics'),
    (31, 'Wardrobe', 'Large Wardrobe', 600, 'Furniture'),
    (32, 'Mixer', 'Stand Mixer', 120, 'Kitchen Utensils'),
    (33, 'Hoodie', 'Graphic Hoodie', 45, 'Clothing'),
    (34, 'Speaker', 'Wireless Speaker', 80, 'Electronics'),
    (35, 'Tea Table', 'Glass Coffee Table', 250, 'Furniture');
    select * from Product;
    
    INSERT INTO PurchaseOrder (OrderID, Type, ProductName, Price, ProductID)
VALUES
    (1, 'Clothing', 'T-Shirt', 20, 1),
    (2, 'Electronics', 'Smartphone', 800, 2),
    (3, 'Furniture', 'Sofa', 600, 3),
    (4, 'Kitchen Utensils', 'Cookware Set', 100, 4),
    (5, 'Clothing', 'Jeans', 50, 5),
    (6, 'Electronics', 'Laptop', 1200, 6),
    (7, 'Furniture', 'Coffee Table', 300, 7),
    (8, 'Kitchen Utensils', 'Blender', 80, 8),
    (9, 'Clothing', 'Dress', 40, 9),
    (10, 'Electronics', 'Smartwatch', 150, 10),
    (11, 'Furniture', 'Bed Frame', 500, 11),
    (12, 'Kitchen Utensils', 'Knife Set', 70, 12),
    (13, 'Clothing', 'Jacket', 70, 13),
    (14, 'Electronics', 'Tablet', 300, 14),
    (15, 'Furniture', 'Bookshelf', 200, 15),
    (16, 'Kitchen Utensils', 'Microwave', 150, 16),
    (17, 'Clothing', 'Sweater', 30, 17),
    (18, 'Electronics', 'Camera', 700, 18),
    (19, 'Furniture', 'Desk', 250, 19),
    (20, 'Electronics', 'Toaster', 40, 20),
    (21, 'Clothing', 'Dress Shirt', 35, 21),
    (22, 'Electronics', 'TV', 1000, 22),
    (23, 'Electronics', 'Cabinet', 400, 23),
    (24, 'Furniture', 'Crockpot', 60, 24),
    (25, 'Clothing', 'Skirt', 25, 25),
    (26, 'Electronics', 'Headphones', 150, 26),
    (27, 'Furniture', 'Dining Table', 450, 27),
    (28, 'Kitchen Utensils', 'Pressure Cooker', 90, 28),
    (29, 'Clothing', 'Polo Shirt', 25, 29),
    
    (30, 'Electronics', 'Drone', 300, 30);
     select * from PurchaseOrder;
  
  SELECT * FROM orderdetails;
  
  INSERT INTO orderdetails (OrderNum, PurchaseBy, SoldBy, PrdID)
  VALUES
  (10542, 1016, 129, 20),
(10236, 1035, 140, 8),
(10789, 1022, 133, 15),
(10124, 1008, 124, 6),
(10987, 1030, 110, 27),
(10876, 1025, 135, 3),
(10345, 1013, 136, 18),
(10654, 1005, 121, 29),
(10432, 1027, 138, 12),
(11000, 1010, 146, 10),
(10912, 1019, 134, 22),
(10567, 1004, 130, 5),
(10478, 1033, 143, 9),
(10890, 1002, 137, 14),
(10623, 1009, 142, 25),
(10734, 1021, 145, 7),
(10389, 1007, 123, 24),
(10156, 1029, 141, 17),
(10689, 1011, 126, 11),
(10401, 1020, 132, 23),
(10555, 1040, 110, 2),
(12000, 1041,112, 1),
(12100, 1042,115,4),
(12001, 1043,111,13),
(12005, 1044,113,16),
(12111, 1045, 116,19),
(12222, 1046, 118,21),
(12500, 1047, 119, 26),
(12575, 1000, 120, 28);
INSERT INTO orderdetails (OrderNum, PurchaseBy, SoldBy, PrdID)
  VALUES ( 12585, 1001, 122,30);


UPDATE PurchaseOrder
SET OrderID = OrderID + 500
WHERE OrderID <= 30;

SELECT * FROM PurchaseOrder;
INSERT INTO ProductStatus (Status , ProdID)
VALUES ("SOLD", 1),
("SOLD", 2),
("SOLD", 3),
("SOLD", 4),
("SOLD", 5),
("SOLD", 6),
("SOLD", 7),
("SOLD", 8),
("SOLD", 9),
("SOLD", 10),
("SOLD", 11),
("SOLD", 12),
("SOLD", 13),
("SOLD", 14),
("SOLD", 15),
("SOLD", 16),
("SOLD", 17),
("SOLD", 18),
("SOLD", 19),
("SOLD", 20),
("SOLD", 21),
("SOLD", 22),
("SOLD", 23),
("SOLD", 24),
("SOLD", 25),
("SOLD", 26),
("SOLD", 27),
("SOLD", 28),
("SOLD", 29),
("SOLD", 30),
("AVAILABLE",31),
("AVAILABLE",32),
("AVAILABLE",33),
("AVAILABLE",34),
("AVAILABLE",35);


INSERT INTO BUYS (BuyerID, SellerID)
VALUES (1016, 129),
(1035, 140),
(1022, 133),
(1008, 124),
(1030, 110),
(1025, 135),
(1013, 136),
(1005, 121),
(1027, 138),
(1010, 146),
(1019, 134),
(1004, 130),
(1033, 143),
(1002, 137),
(1009, 142),
(1021, 145),
(1007, 123),
(1029, 141),
(1011, 126),
(1020, 132),
(1040, 110),
(1041,112),
(1042,115),
(1043,111),
(1044,113),
(1045, 116),
(1046, 118),
(1047, 119),
(1000, 120);

INSERT INTO SELLS (BuyID, SellID)
VALUES (1016, 129),
(1035, 140),
(1022, 133),
(1008, 124),
(1030, 110),
(1025, 135),
(1013, 136),
(1005, 121),
(1027, 138),
(1010, 146),
(1019, 134),
(1004, 130),
(1033, 143),
(1002, 137),
(1009, 142),
(1021, 145),
(1007, 123),
(1029, 141),
(1011, 126),
(1020, 132),
(1040, 110),
(1041,112),
(1042,115),
(1043,111),
(1044,113),
(1045, 116),
(1046, 118),
(1047, 119),
(1000, 120);


