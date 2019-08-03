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

SELECT @ElectonicsAccessoriesCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'ElectronicsAccessories'

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'MobileCovers')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Mobile Covers'
			   ,'MobileCovers'
			   ,@ElectonicsAccessoriesCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'LaptopSkins')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Laptop Skins'
			   ,'LaptopSkins'
			   ,@ElectonicsAccessoriesCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'MousePads')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Mouse Pads'
			   ,'MousePads'
			   ,@ElectonicsAccessoriesCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'DVDs')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('DVDs'
			   ,'DVDs'
			   ,@ElectonicsAccessoriesCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'ScreenProtectors')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Screen Protectors'
			   ,'ScreenProtectors'
			   ,@ElectonicsAccessoriesCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'LaptopSleeves')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Laptop Sleeves'
			   ,'LaptopSleeves'
			   ,@ElectonicsAccessoriesCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PenDrives')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Pen Drives'
			   ,'PenDrives'
			   ,@ElectonicsAccessoriesCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PenWithPenDrives')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Pen with Pen Drives'
			   ,'PenWithPenDrives'
			   ,@ElectonicsAccessoriesCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PowerBanks')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Power Banks'
			   ,'PowerBanks'
			   ,@ElectonicsAccessoriesCategoryID);
END

SELECT @MugsSlippersCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'MugsSlippers'

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'BeerMugs')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Beer Mugs'
			   ,'BeerMugs'
			   ,@MugsSlippersCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'CoffeeMugs')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Coffee Mugs'
			   ,'CoffeeMugs'
			   ,@MugsSlippersCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'HisHerMugs')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('His & Her Mugs'
			   ,'HisHerMugs'
			   ,@MugsSlippersCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'ChildrenMugs')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Children Mugs'
			   ,'ChildrenMugs'
			   ,@MugsSlippersCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'MagicMugs')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Magic Mugs'
			   ,'MagicMugs'
			   ,@MugsSlippersCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'TeaMugs')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Tea Mugs'
			   ,'TeaMugs'
			   ,@MugsSlippersCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'ShotGlasses')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Shot Glasses'
			   ,'ShotGlasses'
			   ,@MugsSlippersCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Sippers')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Sippers'
			   ,'Sippers'
			   ,@MugsSlippersCategoryID);
END

SELECT @ClothingCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'Clothing'

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Caps')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Caps'
			   ,'Caps'
			   ,@ClothingCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'TShirtsHim')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('T-Shirts for him'
			   ,'TShirtsHim'
			   ,@ClothingCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'TShirtsHer')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('T-Shirts for her'
			   ,'TShirtsHer'
			   ,@ClothingCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'TShirtsKids')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('T-Shirts for kids'
			   ,'TShirtsKids'
			   ,@ClothingCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Hoodies')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Hoodies'
			   ,'Hoodies'
			   ,@ClothingCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Sweatshirts')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Sweatshirts'
			   ,'Sweatshirts'
			   ,@ClothingCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Vests')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Vests'
			   ,'Vests'
			   ,@ClothingCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'SecretWear')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Secret Wear ;)'
			   ,'SecretWear'
			   ,@ClothingCategoryID);
END

SELECT @HomeKitchenCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'HomeKitchen'

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Nameplates')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Nameplates'
			   ,'Nameplates'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Clocks')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Clocks'
			   ,'Clocks'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PhotoFrames')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Photo Frames'
			   ,'PhotoFrames'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Collage')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Collage'
			   ,'Collage'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Posters')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Posters'
			   ,'Posters'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'CushionCovers')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Cushion Covers'
			   ,'CushionCovers'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Cushions')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Cushions'
			   ,'Cushions'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Calendars')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Calendars'
			   ,'Calendars'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PhotoMagnets')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Photo Magnets'
			   ,'PhotoMagnets'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PhotoRocks')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Photo Rocks'
			   ,'PhotoRocks'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'CanvasPhotoPrints')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Canvas/Photo Prints'
			   ,'CanvasPhotoPrints'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'InvitationGreetingCards')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Invitation/Greeting Cards'
			   ,'InvitationGreetingCards'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Mirrors')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Mirrors'
			   ,'Mirrors'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'FriendshipBands')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Friendship Bands'
			   ,'FriendshipBands'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Posters')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Posters'
			   ,'Posters'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Tablemats')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Tablemats'
			   ,'Tablemats'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'CeremicPlates')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Ceremic Plates'
			   ,'CeremicPlates'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Toolkits')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Toolkits'
			   ,'Toolkits'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'WallClockCollages')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('WallClock Collages'
			   ,'WallClockCollages'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Watchbox')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Watchbox'
			   ,'Watchbox'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PocketWatch')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('PocketWatch'
			   ,'PocketWatch'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'RotatingLamps')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Rotating Lamps'
			   ,'RotatingLamps'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'SnowGlobe')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Snow Globe'
			   ,'SnowGlobe'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'CubeLamps')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Cube Lamps'
			   ,'CubeLamps'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Chocolates')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Chocolates'
			   ,'Chocolates'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Winebox')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Winebox'
			   ,'Winebox'
			   ,@HomeKitchenCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'SelfieSticks')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Selfie Sticks'
			   ,'SelfieSticks'
			   ,@HomeKitchenCategoryID);
END

SELECT @StationaryCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'Stationary'

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Bookmarks')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Bookmarks'
			   ,'Bookmarks'
			   ,@StationaryCategoryID);
END