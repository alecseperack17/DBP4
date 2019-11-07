CREATE TABLE `Departments` ( 
`DepartmentID` char(35) NOT NULL, 
`Profit` varchar(30) NOT NULL, 
`Sales` varchar(15) NOT NULL, 
`Reviews` char(12) NOT NULL, 
`Employees` varchar(15) NOT NULL, 
`Production` char(30) NOT NULL,
CONSTRAINT PK_DepartmrntID	PRIMARY KEY (`DepartmentID`))

CREATE TABLE `Locatioins` ( 
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
