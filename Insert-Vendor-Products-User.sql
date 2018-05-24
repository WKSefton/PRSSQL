/*
--Vendors
insert into Vendor (Code, Name, Address, City, State, Zip, Phone, Email, IsPreApproved)
	values ('WMT', 'Walmart', '200 Walmart Drive', 'Cincinnati', 'OH', '45013', '555-555-5555', 'WalMart@mart.com', 1);

insert into Vendor (Code, Name, Address, City, State, Zip, Phone, Email, IsPreApproved)
	values ('CC', 'CostCo', '400 CostCo Rd.', 'Dallas', 'TX', '77869', '444-444-4444', 'CostCo@cost.com', 1);

insert into Vendor (Code, Name, Address, City, State, Zip, Phone, Email, IsPreApproved)
	values ('TGT', 'Target', '800 Target Street', 'Clearwater', 'FL', '20571', '333-333-3333', 'Target@target.com', 1);
*/
/*
--Products
	--Walmart products
insert into Products (VendorId, PartNumber, Name, Price, Unit)
	values (1, '10', 'Bike', 230, 1);
insert into Products (VendorId, PartNumber, Name, Price, Unit)
	values (1, '20', 'Shirt', 20, 1);
insert into Products (VendorId, PartNumber, Name, Price, Unit)
	values (1, '30', 'Microwave', 80, 1);

	--CostCo products
insert into Products (VendorId, PartNumber, Name, Price, Unit)
	values (2, '55', 'Fruit', 3, 1);
insert into Products (VendorId, PartNumber, Name, Price, Unit)
	values (2, '65', 'Meat', 5, 1);
insert into Products (VendorId, PartNumber, Name, Price, Unit)
	values (2, '75', 'Candy', 2, 1);

	--Target products
insert into Products (VendorId, PartNumber, Name, Price, Unit)
	values (3, '88', 'Pants', 40, 1);
insert into Products (VendorId, PartNumber, Name, Price, Unit)
	values (3, '98', 'Hat', 8, 1);
insert into Products (VendorId, PartNumber, Name, Price, Unit)
	values (3, '108', 'Shirt', 25, 1);
*/
/*
--Users
insert into [User] (Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
	values ('WKS', 'WKS22', 'Wil', 'Sef', '111-111-1111', 'wilsef@sef.com', 1, 1);

insert into [User] (Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
	values ('JackMan', 'J9920', 'Jack', 'Manto', '222-222-2222', 'JManto@sef.com', 1, 1);

insert into [User] (Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
	values ('BeerDeer', 'HuntME1', 'Tom', 'Marrow', '333-333-3333', 'TBone5@sef.com', 1, 1);
*/