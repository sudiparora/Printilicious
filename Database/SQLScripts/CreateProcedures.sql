
IF OBJECT_ID('usp_FetchProductGroupCategories', 'P') IS NOT NULL
    DROP PROCEDURE usp_FetchProductGroupCategories
GO

IF OBJECT_ID('usp_FindUserByEmailId', 'P') IS NOT NULL
    DROP PROCEDURE usp_FindUserByEmailId
GO

IF OBJECT_ID('usp_CreateNewUser', 'P') IS NOT NULL
    DROP PROCEDURE usp_CreateNewUser
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
	@EmailAddress VARCHAR(200),
	@PasswordHash VARCHAR(MAX),
	@IsNewUserCreated BIT OUTPUT
)
AS
BEGIN
INSERT INTO [dbo].[tblUser]
           ([PasswordHash]
           ,[Email])
     VALUES
           (@PasswordHash
		   ,@EmailAddress)

		   

SELECT @IsNewUserCreated = COUNT(1) FROM tblUser WHERE Email = @EmailAddress

END
GO

EXEC usp_FetchProductGroupCategories


DECLARE @IsNewUserCreated BIT 
SELECT @IsNewUserCreated = COUNT(1) FROM tblUser WHERE Email = 'sudip.arora@gmail.com1'
PRINT @IsNewUserCreated


