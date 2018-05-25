create procedure AddProduct
	@VendorId int,
	@PartNumber nvarchar(50),
	@Name nvarchar(150),
	@Price decimal(10,2),
	@Unit nvarchar(25),
	@PhotoPath nvarchar(255),
	@Active bit
as
BEGIN
	insert into Products (VendorId, PartNumber, Name, Price, Unit, PhotoPath, Active)
		values (@VendorId, @PartNumber, @Name, @Price, @Unit, @PhotoPath, @Active)
END
go
create procedure AddUser 
	@username nvarchar(30),
	@password nvarchar(30),
	@firstname nvarchar(30),
	@lastname nvarchar(30),
	@phone nvarchar(12),
	@email nvarchar(255),
	@isreviewer bit,
	@isadmin bit,
	@active bit
as
BEGIN
	insert into [user] (username, password, firstname, lastname, phone, email, isreviewer, isadmin, active)
		values (@username, @password, @firstname, @lastname, @phone, @email, @isreviewer, @isadmin, @active)
END
go
create procedure AddVendor
	@Code nvarchar(30),
	@Name nvarchar(255),
	@Address nvarchar(255),
	@City nvarchar(255),
	@State nvarchar(2),
	@Zip nvarchar(5),
	@Phone nvarchar(12),
	@Email nvarchar(255),
	@IsPreApproved bit,
	@Active bit
as
BEGIN
	insert into Vendor (Code, Name, Address, City, State, Zip, Phone, Email, IsPreApproved, Active)
		values (@Code, @Name, @Address, @City, @State, @Zip, @Phone, @Email, @IsPreApproved, @Active)
END
go