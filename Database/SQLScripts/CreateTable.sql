IF OBJECT_ID('tblCartItem', 'U') IS NOT NULL
    DROP TABLE tblCartItem;

IF OBJECT_ID('tblCart', 'U') IS NOT NULL
    DROP TABLE tblCart;

IF OBJECT_ID('tblProduct', 'U') IS NOT NULL
	DROP TABLE tblProduct;

IF OBJECT_ID('tblProductCategory', 'U') IS NOT NULL
	DROP TABLE tblProductCategory;

--IF OBJECT_ID('tblProductGroup', 'U') IS NOT NULL
--    DROP TABLE tblProductGroup;

IF OBJECT_ID('tblUser', 'U') IS NOT NULL
    DROP TABLE tblUser;

--CREATE TABLE tblProductGroup
--(
--	ProductGroupID INT IDENTITY(1,1) NOT NULL,
--	ProductGroupName VARCHAR(50),
--    ProductGroupDesc VARCHAR(100),
--	CONSTRAINT PK_tblProductGroup_ProductGroupID PRIMARY KEY CLUSTERED (ProductGroupID)
--)
--GO

CREATE TABLE tblProductCategory
(
	ProductCategoryID INT IDENTITY(1,1) NOT NULL,
	ProductCategoryName VARCHAR(50),
    ProductCategoryCode VARCHAR(100),
	ProductCategoryParentID INT,
	CONSTRAINT PK_tblProductCategory_ProductCategoryID PRIMARY KEY CLUSTERED (ProductCategoryID),
	CONSTRAINT FK_tblProductCategory_ProductCategoryParentID FOREIGN KEY(ProductCategoryParentID) REFERENCES tblProductCategory(ProductCategoryID)
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
	ID INT IDENTITY(1,1) NOT NULL,
	UserID VARCHAR(MAX),
	PasswordHash VARCHAR(MAX),
	Email VARCHAR(100) UNIQUE,
	PhoneNumber VARCHAR(15),
	IsEmailConfirmed BIT,
	AccessFailedCount INT,
	LockoutEnabled INT,
	CONSTRAINT PK_tblUser_ID PRIMARY KEY CLUSTERED (ID)
);
GO

CREATE TABLE tblCart
(
	ID INT IDENTITY(1,1) NOT NULL,
	CartID VARCHAR(MAX),
	UserID INT NULL,
	ItemCount INT,
	CartTotal DECIMAL,
	CONSTRAINT PK_tblCart_ID PRIMARY KEY CLUSTERED (ID),
	CONSTRAINT FK_tblCart_UserID FOREIGN KEY(UserID) REFERENCES tblUser(ID)
);
GO

CREATE TABLE tblCartItem
(
	CartID INT NOT NULL,
	ProductID INT,
	Quantity INT NOT NULL,
	CONSTRAINT FK_tblCartItem_CartID FOREIGN KEY(CartID) REFERENCES tblCart(ID),
	CONSTRAINT FK_tblCartItem_ProductID FOREIGN KEY(ProductID) REFERENCES tblProduct(ProductID)
);
GO