IF OBJECT_ID('tblProduct', 'U') IS NOT NULL
	DROP TABLE tblProduct;

IF OBJECT_ID('tblProductCategory', 'U') IS NOT NULL
	DROP TABLE tblProductCategory;

IF OBJECT_ID('tblProductGroup', 'U') IS NOT NULL
    DROP TABLE tblProductGroup;

IF OBJECT_ID('tblUser', 'U') IS NOT NULL
    DROP TABLE tblUser;

CREATE TABLE tblProductGroup
(
	ProductGroupID INT IDENTITY(1,1) NOT NULL,
	ProductGroupName VARCHAR(50),
    ProductGroupDesc VARCHAR(100),
	CONSTRAINT PK_tblProductGroup_ProductGroupID PRIMARY KEY CLUSTERED (ProductGroupID)
)

GO

CREATE TABLE tblProductCategory
(
	ProductCategoryID INT IDENTITY(1,1) NOT NULL,
	ProductGroupID INT,
	ProductCategoryName VARCHAR(50),
    ProductCategoryDesc VARCHAR(100),
	CONSTRAINT PK_tblProductCategory_ProductCategoryID PRIMARY KEY CLUSTERED (ProductCategoryID),
	CONSTRAINT FK_tblProductCategory_ProductGroupID FOREIGN KEY(ProductGroupID) REFERENCES tblProductGroup(ProductGroupID)
);

GO

CREATE TABLE tblProduct
(
	ProductID INT IDENTITY(1,1) NOT NULL,
	ProductCategoryID INT,
	ProductName VARCHAR(50),
    ProductDesc VARCHAR(100),
	CONSTRAINT PK_tblProduct_ProductID PRIMARY KEY CLUSTERED (ProductID),
	CONSTRAINT FK_tblProduct_ProductCategoryID FOREIGN KEY(ProductCategoryID) REFERENCES tblProductCategory(ProductCategoryID)
);

GO

CREATE TABLE tblUser
(
	UserID INT IDENTITY(1,1) NOT NULL,
	PasswordHash VARCHAR(MAX),
	Email VARCHAR(100) UNIQUE,
	PhoneNumber VARCHAR(15),
	IsEmailConfirmed BIT,
	AccessFailedCount INT,
	LockoutEnabled INT,
	CONSTRAINT PK_tblUser_UserID PRIMARY KEY CLUSTERED (UserID)
);
GO