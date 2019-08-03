DECLARE @PersonalizedCategoryID INT 
SELECT @PersonalizedCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'Personalized'

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'WallClocks' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Wall Clocks'
			   ,'WallClocks'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PhotoCutouts' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Photo Cutouts'
			   ,'PhotoCutouts'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PhotoPlates' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Photo Plates'
			   ,'PhotoPlates'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'CushionCovers' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Cushion Covers'
			   ,'CushionCovers'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'FabricCollage' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Fabric Collage'
			   ,'FabricCollage'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'MobileCovers' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Mobile Covers'
			   ,'MobileCovers'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PhotoBedsheets' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Photo Bedsheets'
			   ,'PhotoBedsheets'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PhotoCurtains' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Photo Curtains'
			   ,'PhotoCurtains'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PhotoLamps' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Photo Lamps'
			   ,'PhotoLamps'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'LEDProducts' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('LED Products'
			   ,'LEDProducts'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Mugs' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Mugs'
			   ,'Mugs'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Sippers' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Sippers'
			   ,'Sippers'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Games' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Games'
			   ,'Games'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'MousePads' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Mouse Pads'
			   ,'MousePads'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Calendars' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Calendars'
			   ,'Calendars'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Collage' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Collage'
			   ,'Collage'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Coasters' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Coasters'
			   ,'Coasters'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Bookmarks' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Bookmarks'
			   ,'Bookmarks'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Danglers' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Danglers'
			   ,'Danglers'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'LaptopItems' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Laptop Items'
			   ,'LaptopItems'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Clothing' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Clothing'
			   ,'Clothing'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'LuggageTags' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Luggage Tags'
			   ,'LuggageTags'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'CanvasPrints' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Canvas Prints'
			   ,'CanvasPrints'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PhotoMagnets' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Photo Magnets'
			   ,'PhotoMagnets'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Nameplates' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Nameplates'
			   ,'Nameplates'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PassportCover' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Passport Cover'
			   ,'PassportCover'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'ChequebookCover' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Chequebook Cover'
			   ,'ChequebookCover'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Winebox' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Winebox'
			   ,'Winebox'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'CubeLamp' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Cube Lamp'
			   ,'CubeLamp'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'ChocolateBox' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Chocolate Box'
			   ,'ChocolateBox'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'TableMats' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Table Mats'
			   ,'TableMats'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'WrappingPaper' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Wrapping Paper'
			   ,'WrappingPaper'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Notebooks' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Notebooks'
			   ,'Notebooks'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'ExaminationBoards' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Examination Boards'
			   ,'ExaminationBoards'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PaperFolder' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Paper Folder'
			   ,'PaperFolder'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Posters' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Posters'
			   ,'Posters'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PhotoBookAlbum' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Photo Book Album'
			   ,'PhotoBookAlbum'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PlayingCards' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Playing Cards'
			   ,'PlayingCards'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'KeyHanger' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('KeyHanger'
			   ,'KeyHanger'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'DoorHanger' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Door Hanger'
			   ,'DoorHanger'
			   ,@PersonalizedCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Scrapbooks' AND ProductCategoryParentID = @PersonalizedCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Scrapbooks'
			   ,'Scrapbooks'
			   ,@PersonalizedCategoryID);
END
