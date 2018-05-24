--drop table User;

go
create table [User] (
	Id int not null Identity(1,1) Primary Key,
	Username nvarchar(30) not null unique,
	Password nvarchar(30) not null,
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	Phone nvarchar(12) not null,
	Email nvarchar(255) not null,
	IsReviewer bit(1) not null,
	IsAdmin bit(1) not null,
	Active bit(1) not null
);
go