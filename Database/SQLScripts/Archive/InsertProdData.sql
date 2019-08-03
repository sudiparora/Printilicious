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


GO

