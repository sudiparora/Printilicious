IF OBJECT_ID('usp_GetProductDetail', 'P') IS NOT NULL
    DROP PROCEDURE usp_GetProductDetail
GO

IF OBJECT_ID('usp_GetProductsForCategory', 'P') IS NOT NULL
    DROP PROCEDURE usp_GetProductsForCategory
GO

IF OBJECT_ID('usp_FetchProductCategories', 'P') IS NOT NULL
    DROP PROCEDURE usp_FetchProductCategories
GO

IF OBJECT_ID('usp_FindUserByEmailId', 'P') IS NOT NULL
    DROP PROCEDURE usp_FindUserByEmailId
GO

IF OBJECT_ID('usp_CreateNewUser', 'P') IS NOT NULL
    DROP PROCEDURE usp_CreateNewUser
GO

IF OBJECT_ID('usp_FindUserById', 'P') IS NOT NULL
    DROP PROCEDURE usp_FindUserById
GO

IF OBJECT_ID('usp_AddItemToCart', 'P') IS NOT NULL
    DROP PROCEDURE usp_AddItemToCart
GO

IF OBJECT_ID('usp_RemoveItemFromCart', 'P') IS NOT NULL
    DROP PROCEDURE usp_RemoveItemFromCart
GO

IF OBJECT_ID('usp_EmptyCart', 'P') IS NOT NULL
    DROP PROCEDURE usp_EmptyCart
GO

--CREATE PROCEDURE usp_FetchProductGroupCategories
--AS
--BEGIN

--SELECT prod.ProductID,prod.ProductName, prod.ProductDesc, 
--	   prodcat.ProductCategoryID,prodcat.ProductCategoryName,prodcat.ProductCategoryDesc, 
--	   prodgrp.ProductGroupID, prodgrp.ProductGroupName, prodgrp.ProductGroupDesc 
--	FROM tblProduct AS prod 
--	FULL OUTER JOIN tblproductcategory AS prodcat ON prod.productcategoryid = prodcat.productcategoryid 
--	FULL OUTER JOIN tblproductgroup AS prodgrp ON prodgrp.productgroupid = prodcat.productgroupid
--	ORDER BY prodgrp.ProductGroupName

--END

--GO

CREATE PROCEDURE usp_GetProductDetail
(
	@ProductCode VARCHAR(50)
)
AS
BEGIN
	SELECT Prod.ProductID, Prod.ProductDesc, Prod.ProductName, Prod.ProductCode FROM tblProduct Prod WHERE Prod.ProductCode = @ProductCode
END
GO

CREATE PROCEDURE usp_GetProductsForCategory
(
	@CategoryCode VARCHAR(200)
)
AS
BEGIN
	SELECT Prod.ProductID, Prod.ProductDesc, Prod.ProductName, Prod.ProductCode FROM tblProduct Prod
		INNER JOIN tblProductCategory ProdCat ON Prod.ProductCategoryID = ProdCat.ProductCategoryID
	 WHERE ProdCat.ProductCategoryCode = @CategoryCode;
END
GO

CREATE PROCEDURE usp_FetchProductCategories
AS
BEGIN
WITH Hierarchy(ProductCategoryID, ProductCategoryName, ProductCategoryCode, ProductCategoryParentId, ProductCategoryParents)
AS
(
    SELECT ProductCategoryID, ProductCategoryName, ProductCategoryCode, ProductCategoryParentId, CAST('' AS VARCHAR(MAX))
        FROM tblProductCategory AS FirtGeneration
        WHERE ProductCategoryParentId IS NULL    
    UNION ALL
    SELECT NextGeneration.ProductCategoryID, NextGeneration.ProductCategoryName, NextGeneration.ProductCategoryCode, Parent.ProductCategoryID,
    CAST(CASE WHEN Parent.ProductCategoryParents = ''
        THEN(CAST(NextGeneration.ProductCategoryParentId AS VARCHAR(MAX)))
        ELSE(Parent.ProductCategoryParents + '.' + CAST(NextGeneration.ProductCategoryParentId AS VARCHAR(MAX)))
    END AS VARCHAR(MAX))
        FROM tblProductCategory AS NextGeneration
        INNER JOIN Hierarchy AS Parent ON NextGeneration.ProductCategoryParentId = Parent.ProductCategoryID 
)
SELECT * FROM Hierarchy

END
GO


--CREATE PROCEDURE usp_FindUserByEmailId
--(
--	@EmailAddress VARCHAR(200)
--)
--AS
--BEGIN
--	SELECT Email from tblUser WHERE Email = @EmailAddress;
--END
--GO

--CREATE PROCEDURE usp_CreateNewUser
--(
--	@UserID VARCHAR(MAX),
--	@EmailAddress VARCHAR(200),
--	@PasswordHash VARCHAR(MAX),
--	@IsNewUserCreated BIT OUTPUT
--)
--AS
--BEGIN
--	IF NOT EXISTS (SELECT 1 FROM tblUser WHERE Email = @EmailAddress)
--	BEGIN
--		INSERT INTO [dbo].[tblUser]
--				   ([UserID]
--				   ,[PasswordHash]
--				   ,[Email])
--			 VALUES
--				   (@UserID
--				   ,@PasswordHash
--				   ,@EmailAddress)

--		SELECT @IsNewUserCreated = COUNT(1) FROM tblUser WHERE Email = @EmailAddress
--	END
--END
--GO

--CREATE PROCEDURE usp_FindUserById
--(
--	@UserID VARCHAR(MAX)
--)
--AS
--BEGIN
--	SELECT UserID, PasswordHash, Email, PhoneNumber, IsEmailConfirmed, AccessFailedCount, LockoutEnabled
--	FROM tblUser WHERE UserID = @UserID
--END
--GO

CREATE PROCEDURE usp_AddItemToCart
(
	@CartID VARCHAR(MAX),
	@ProductID INT,
	@Quantity INT,
	@IsItemAddedToCart BIT OUTPUT
)
AS
BEGIN
	-- If Cart already exists, then add the newly added item to the already existing cart
	IF EXISTS(SELECT 1 FROM tblCart WHERE CartID = @CartID)
		BEGIN
			INSERT INTO tblCartItem([CartID],[ProductID],[Quantity])
				 VALUES (@CartID,@ProductID,@Quantity);
			UPDATE tblCart SET ItemCount = ItemCount + 1 WHERE CartID = @CartID
		END
	-- Creating a new cart if user is creating a fresh cart
	ELSE
		BEGIN
			INSERT INTO tblCart([CartID],[UserID],[ItemCount],[CartTotal])
				VALUES(@CartID,NULL,1,0.0)
			INSERT INTO tblCartItem([CartID],[ProductID],[Quantity])
				 VALUES (@CartID,@ProductID,@Quantity);
		END

	-- Checking Addition Status
	IF EXISTS(SELECT 1 FROM tblCartItem WHERE CartID = @CartID AND ProductID = @ProductID AND Quantity = @Quantity)
		SET @IsItemAddedToCart = 1
	ELSE
		SET @IsItemAddedToCart = 0
END
GO

CREATE PROCEDURE usp_RemoveItemFromCart
(
	@CartID VARCHAR(MAX),
	@ProductID INT,
	@IsItemRemovedFromCart BIT OUTPUT
)
AS
BEGIN
	-- Removing CartItem
	DELETE FROM tblCartItem WHERE CartID = @CartID AND ProductID = @ProductID
	
	-- If Cart is Empty, then deleting Cart entry!!
	IF NOT EXISTS(SELECT 1 FROM tblCartItem WHERE CartID = @CartID)
		DELETE FROM tblCart WHERE CartID = @CartID
	
	-- Checking Deletion Status
	IF EXISTS(SELECT 1 FROM tblCartItem WHERE CartID = @CartID AND ProductID = @ProductID)
		SET @IsItemRemovedFromCart = 0
	ELSE
		SET @IsItemRemovedFromCart = 1
END
GO

CREATE PROCEDURE usp_EmptyCart
(
	@CartID VARCHAR(MAX),
	@DoesCartExist BIT OUTPUT
)
AS
BEGIN
	DELETE FROM tblCartItem WHERE CartID = @CartID
	DELETE FROM tblCart WHERE CartID = @CartID

	-- Checking Deletion Status
	IF EXISTS(SELECT 1 FROM tblCart WHERE CartID = @CartID)
		SET @DoesCartExist = 0
	ELSE
		SET @DoesCartExist = 1
END
GO
--EXEC usp_FetchProductGroupCategories


--DECLARE @IsNewUserCreated BIT 
--SELECT @IsNewUserCreated = COUNT(1) FROM tblUser WHERE Email = 'sudip.arora@gmail.com1'
--PRINT @IsNewUserCreated


