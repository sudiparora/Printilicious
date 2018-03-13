
IF OBJECT_ID('usp_FetchProductGroupCategories', 'P') IS NOT NULL
    DROP PROCEDURE usp_FetchProductGroupCategories
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

CREATE PROCEDURE usp_FetchProductGroupCategories
AS
BEGIN

SELECT prod.ProductID,prod.ProductName, prod.ProductDesc, 
	   prodcat.ProductCategoryID,prodcat.ProductCategoryName,prodcat.ProductCategoryDesc, 
	   prodgrp.ProductGroupID, prodgrp.ProductGroupName, prodgrp.ProductGroupDesc 
	FROM tblProduct AS prod 
	FULL OUTER JOIN tblproductcategory AS prodcat ON prod.productcategoryid = prodcat.productcategoryid 
	FULL OUTER JOIN tblproductgroup AS prodgrp ON prodgrp.productgroupid = prodcat.productgroupid
	ORDER BY prodgrp.ProductGroupName

END

GO

CREATE PROCEDURE usp_FindUserByEmailId
(
	@EmailAddress VARCHAR(200)
)
AS
BEGIN
	SELECT Email from tblUser WHERE Email = @EmailAddress;
END
GO

CREATE PROCEDURE usp_CreateNewUser
(
	@UserID VARCHAR(MAX),
	@EmailAddress VARCHAR(200),
	@PasswordHash VARCHAR(MAX),
	@IsNewUserCreated BIT OUTPUT
)
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM tblUser WHERE Email = @EmailAddress)
	BEGIN
		INSERT INTO [dbo].[tblUser]
				   ([UserID]
				   ,[PasswordHash]
				   ,[Email])
			 VALUES
				   (@UserID
				   ,@PasswordHash
				   ,@EmailAddress)

		SELECT @IsNewUserCreated = COUNT(1) FROM tblUser WHERE Email = @EmailAddress
	END
END
GO

CREATE PROCEDURE usp_FindUserById
(
	@UserID VARCHAR(MAX)
)
AS
BEGIN
	SELECT UserID, PasswordHash, Email, PhoneNumber, IsEmailConfirmed, AccessFailedCount, LockoutEnabled
	FROM tblUser WHERE UserID = @UserID
END
--EXEC usp_FetchProductGroupCategories


--DECLARE @IsNewUserCreated BIT 
--SELECT @IsNewUserCreated = COUNT(1) FROM tblUser WHERE Email = 'sudip.arora@gmail.com1'
--PRINT @IsNewUserCreated


