DECLARE @PersonalizedProductsCategoryID INT
DECLARE @ElectonicsAccessoriesCategoryID INT
DECLARE @MugsSlippersCategoryID INT
DECLARE @ClothingCategoryID INT
DECLARE @HomeKitchenCategoryID INT
DECLARE @StationaryCategoryID INT
DECLARE @BagsWalletCategoryID INT

SELECT @PersonalizedProductsCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'PersonalizedProducts'

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'ElectronicsAccessories')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Electronics/Accessories'
			   ,'ElectronicsAccessories'
			   ,@PersonalizedProductsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'MugsSlippers')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Mugs & Sippers'
			   ,'MugsSlippers'
			   ,@PersonalizedProductsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Clothing')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Clothing'
			   ,'Clothing'
			   ,@PersonalizedProductsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'HomeKitchen')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Home & Kitchen'
			   ,'HomeKitchen'
			   ,@PersonalizedProductsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Stationary')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Stationary'
			   ,'Stationary'
			   ,@PersonalizedProductsCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'BagsWallets')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Bags & Wallets'
			   ,'BagsWallets'
			   ,@PersonalizedProductsCategoryID);
END
