DECLARE @BusinessCardsCategoryID INT 
DECLARE @PersonalizedProductsCategoryID INT 
DECLARE @OfficeProductsCategoryID INT 
DECLARE @MarketingSuppliesCategoryID INT 
DECLARE @PremiumGiftsCategoryID INT 

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'BusinessCards')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Business Cards'
			   ,'BusinessCards'
			   ,NULL);
END
SELECT @BusinessCardsCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'BusinessCards'

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PersonalizedProducts')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Personalized Products'
			   ,'PersonalizedProducts'
			   ,NULL);
END
SELECT @PersonalizedProductsCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'PersonalizedProducts'

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'OfficeProducts')
BEGIN
INSERT INTO [dbo].[tblProductCategory]
           ([ProductCategoryName]
           ,[ProductCategoryCode]
           ,[ProductCategoryParentID])
     VALUES
           ('Office Products'
           ,'OfficeProducts'
           ,NULL);
END
SELECT @OfficeProductsCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'OfficeProducts'

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'MarketingSupplies')
BEGIN
INSERT INTO [dbo].[tblProductCategory]
           ([ProductCategoryName]
           ,[ProductCategoryCode]
           ,[ProductCategoryParentID])
     VALUES
           ('Marketing Supplies'
           ,'MarketingSupplies'
           ,NULL);
END
SELECT @MarketingSuppliesCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'MarketingSupplies'

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PremiumGifts')
BEGIN
INSERT INTO [dbo].[tblProductCategory]
           ([ProductCategoryName]
           ,[ProductCategoryCode]
           ,[ProductCategoryParentID])
     VALUES
           ('Premium Gifts'
           ,'PremiumGifts'
           ,NULL);
END
SELECT @PremiumGiftsCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'PremiumGifts'



GO

