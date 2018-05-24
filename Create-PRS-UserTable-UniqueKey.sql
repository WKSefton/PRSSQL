use master;
go
drop database PRSSQL;
go
create database PRSSQL;
go
use PRSSQL;
go
create table [User] (
	Id int not null Identity(1,1) Primary Key,
	Username nvarchar(30) not null,
	Password nvarchar(30) not null,
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	Phone nvarchar(12) not null,
	Email nvarchar(255) not null,
	IsReviewer bit not null default 0,
	IsAdmin bit not null default 0,
	Active bit not null default 1
);
go
create unique index uix_username on [User](Username);
go
create table Vendor (
	Id int not null Identity(1,1) Primary Key,
	Code nvarchar(30) not null,
	Name nvarchar(255) not null,
	Address nvarchar(255) not null,
	City nvarchar(255) not null,
	State nvarchar(2) not null,
	Zip nvarchar(5) not null,
	Phone nvarchar(12) not null,
	Email nvarchar(255) not null,
	IsPreApproved bit not null default 0,
	Active bit not null default 1
);
go
create unique index uix_code on [Vendor](Code);
go
create table Products (
	Id int not null Identity(1,1) Primary Key,
	VendorId int not null Foreign Key references Vendor(Id),
	PartNumber nvarchar(50) not null,
	Name nvarchar(150) not null,
	Price decimal(10,2) not null,
	Unit nvarchar(25) not null,
	PhotoPath nvarchar(255),
	Active bit not null default 1
);
go
create unique index uix_partnumber on [Products](PartNumber);
go
create table PurchasRequest (
	Id int not null Identity(1,1) Primary Key,
	UserId int not null Foreign Key references [User](Id),
	Description nvarchar(100) not null,
	Justification nvarchar(255) not null,
	DeliveryMode nvarchar(22) not null,
	Status nvarchar(10) default 'NEW',
	Total decimal(10,2) not null default 0,
	Active bit not null default 1,
	ReasonForRejection nvarchar(100)
);
go
create table PurchasRequestLineItem (
	Id int not null Identity(1,1) Primary Key,
	PurchasRequestId int not null Foreign Key references [PurchasRequest](Id),
	ProductsId int not null Foreign Key references [Products](Id),
	Quantity int not null default 1,
	Active bit not null default 1
);
go