DECLARE @BusinessCardsCategoryID INT 
 
DECLARE @OfficeProductsCategoryID INT 
DECLARE @MarketingSuppliesCategoryID INT 
DECLARE @PremiumGiftsCategoryID INT 

SELECT @BusinessCardsCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'BusinessCards'

SELECT @OfficeProductsCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'OfficeProducts'
SELECT @MarketingSuppliesCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'MarketingSupplies'
SELECT @PremiumGiftsCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'PremiumGifts'

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'BasicCards')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Basic Cards'
			   ,'BasicCards'
			   ,@BusinessCardsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'OldisGold')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Old is Gold'
			   ,'OldisGold'
			   ,@BusinessCardsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PremiumCards')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Premium Cards'
			   ,'PremiumCards'
			   ,@BusinessCardsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'MiniCards')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Mini Cards'
			   ,'MiniCards'
			   ,@BusinessCardsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'RoundedCornerCards')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Rounded Corner Cards'
			   ,'RoundedCornerCards'
			   ,@BusinessCardsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'VerticalCards')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Vertical Cards'
			   ,'VerticalCards'
			   ,@BusinessCardsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'SquareCards')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Square Cards'
			   ,'SquareCards'
			   ,@BusinessCardsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'FoldingFoldedCards')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Folding/Folded Cards'
			   ,'FoldingFoldedCards'
			   ,@BusinessCardsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'TextureCards')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Texture Cards'
			   ,'TextureCards'
			   ,@BusinessCardsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'TransparentCards')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Transparent Cards'
			   ,'TransparentCards'
			   ,@BusinessCardsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'GoldenSilverCards')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Golden/Silver Cards'
			   ,'GoldenSilverCards'
			   ,@BusinessCardsCategoryID);
END