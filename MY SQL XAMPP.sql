CREATE TABLE `Departments` ( 
`DepartmentID` char(35) NOT NULL, 
`Profit` varchar(30) NOT NULL, 
`Sales` varchar(15) NOT NULL, 
`Reviews` char(12) NOT NULL, 
`Employees` varchar(15) NOT NULL, 
`Production` char(30) NOT NULL,
CONSTRAINT PK_DepartmrntID	PRIMARY KEY (`DepartmentID`))

CREATE TABLE `Locations` ( 
`LocationtID` char(35) NOT NULL, 
`Production` char(30) NOT NULL, 
`Warehousing` char(15) NOT NULL, 
`TireType` char(12) NOT NULL, 
`Profit` char(15) NOT NULL, 
`ProductionID` char(30) NOT NULL,
CONSTRAINT FK_ProductID    FOREIGN KEY (`ProductID`)) REFERENCES Prodcuts(ProductID)


CREATE TABLE `Products` ( 
`ProductID` char(35) NOT NULL, 
`CostToProduce` int(30) NOT NULL, 
`Materials` char(15) NOT NULL, 
`TireType` char(12) NOT NULL, 
`Profit` char(15) NOT NULL, 
CONSTRAINT FK_Profit	 FOREIGN KEY (`Profit`)) REFERENCES Treasury(Salary)
                                   
CREATE TABLE `Employees` (
 `EmployeeID` int(5) NOT NULL,
 `Email` varchar(100) NOT NULL,
 `Phone` char(12) DEFAULT NULL,
 `FirstName` char(25) NOT NULL,
 `LastName` char(25) NOT NULL,
 `HireDate` date NOT NULL,
 `Sales` int(11) NOT NULL,
 PRIMARY KEY (`EmployeeID`)    
  CONSTRAINT FK_SALES   FOREIGN KEY (Sales)
  

  CREATE TABLE `projects` (
 `ProjectID` int(11) NOT NULL,
 `StartDate` date NOT NULL,
 `CompletionDate` date NOT NULL,
 `EmployeeID` int(11) NOT NULL,
 `CustomerID` int(11) NOT NULL,
 PRIMARY KEY (`ProjectID`,`EmployeeID`)
    CONSTRAINT FK_EmployeeID FOREIGN KEY (EmployeeID)

   CREATE TABLE 'TREASURY' (
   'DepartmentID' Char(35) NOT NULL,
   'Profit' Numeric(8,2) NOT NULL,
   'EmployeeID' Int(5) NOT NULL,
   'Salary' Numeric(8,2) NULL,
   'Sales' Numeric(8,2) NULL,
    CONSTRAINT DepartmentPK PRIMARY KEY(DepartmentID)
    CONSTRAINT EmployeeIDFK FOREIGN KEY(EmployeeID)
    CONSTRAINT ProfitCheck CHECK (Profit < Sales))

   CREATE TABLE 'CUSTOMERS' (
   'CustomerID' Int(5) NOT NULL,
   'ProductID' Int(35) NOT NULL,
   'Reviews' Char(12) NOT NULL,
   'PurchaseDate' Datetime NULL,
    CONSTRAINT ProductIDFK FOREIGN KEY(ProductID)
    CONSTRAINT CustomerIDPK PRIMARY KEY(CustomerID))
