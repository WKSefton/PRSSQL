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