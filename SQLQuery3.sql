Create Database WishComapny
Use WishComapny

Create Table Employees 
(

Name nvarchar(100),
Surname nvarchar(100),
Position nvarchar(100),
Salary int
)

Insert into Employees Values('Xeyrulla','Xelil','Developer',6500), ('Namiq','Xelil','Manager',7500)

 
Select AVg(Salary) from Employees
 SELECT * FROM Employees  GROUP BY Name, Surname,Salary,Position HAVING salary > (select avg(salary))
 

 SELECT MAX(Salary) FROM Employees
  SELECT Min(Salary) FROM Employees

  Drop Table Employees
  ----------------------------------------------------
  

Create Database Market
Use Market
Create Table Products 
(
Id int,
Name nvarchar(100),
Price int
)
Alter Table Products Add Brand nvarchar(50)
Insert into Products Values(1,'Nescafe',5,'BrandNescafe'),(2,'Ariel',6,'BrandAriel'),(3,'Cola',5,'BrandCola'),(4,'Fanta',6,'BrandFanta')
SELECT * FROM Products  GROUP BY Name, Id,Name,Price,Brand HAVING price < (select avg(Price) )
SELECT * FROM Products GROUP BY Name, Id,Name,Price,Brand HAVING price>10
Select Brand from Products where LEN(Brand) > 5
Select Brand,Name, From Products;
Alter Table Products DROP COLUMN ProductInfo;
Select (p.Brand+' '+p.Name) as 'ProductInfo' from Products p

 Drop Database Market
  Drop Table Products

  ----------------------------------------------


  Create Database Company
  use Company 
  Create Table Employees
  (	
  Id int identity constraint Pk_key2 primary key,	
  FullName nvarchar(100) constraint NN_notnull1 Not Null Check(Len(FullName)=3),	
  Salary tinyint constraint NN_notnull3  Not Null Check(Salary > 0),	
  Email nvarchar(100) constraint NN_notnull4 Not Null Unique 
  ) 
  Alter Table Employees Add DepartmentsId int constraint NN_notnull6  Not Null Foreign Key References Departments(Id) 
  Create Table Departments(	Id int identity constraint Pk_key2 primary key,	
  Name nvarchar(100) constraint NN_notnull8 Not Null Check(Len(Name)=3))

  Drop Database Company
  Drop Table Employees
