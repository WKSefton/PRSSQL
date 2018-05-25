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
exec AddVendor 'WMT', 'Walmart', '200 Walmart Drive', 'Cincinnati', 'OH', '45013', '555-555-5555', 'WalMart@mart.com', 1;
go