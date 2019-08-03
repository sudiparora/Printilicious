DECLARE @PromotionalCategoryID INT 
SELECT @PromotionalCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'Promotional'

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Standee' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Standee'
			   ,'Standee'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PromoTable' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Promo Table'
			   ,'PromoTable'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Canopy' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Canopy'
			   ,'Canopy'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Gazibo' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Gazibo'
			   ,'Gazibo'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'WoodenStand' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Wooden Stand'
			   ,'WoodenStand'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Danglers' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Danglers'
			   ,'Danglers'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Badges' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Badges'
			   ,'Badges'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Pens' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Pens'
			   ,'Pens'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Banners' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Banners'
			   ,'Banners'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'NonWovenBags' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Non-woven Bags'
			   ,'NonWovenBags'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PaperBags' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Paper Bags'
			   ,'PaperBags'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Cutouts' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Cutouts'
			   ,'Cutouts'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'NoParkingSunpacks' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('No-Parking Sunpacks'
			   ,'NoParkingSunpacks'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'WallCalendars' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Wall Calendars'
			   ,'WallCalendars'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'DeskCalendars' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Desk Calendars'
			   ,'DeskCalendars'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Coasters' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Coasters'
			   ,'Coasters'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PhotoFrames' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Photo Frames'
			   ,'PhotoFrames'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'TissueBoxes' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Tissue Boxes'
			   ,'TissueBoxes'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Flags' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Flags'
			   ,'Flags'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Mugs_Slippers' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Mugs/Slippers'
			   ,'Mugs_Slippers'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'MousePads' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Mouse Pads'
			   ,'MousePads'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Clocks' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Clocks'
			   ,'Clocks'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'KeyHangers' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Key Hangers'
			   ,'KeyHangers'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Notebooks' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Notebooks'
			   ,'Notebooks'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'RoughPads' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Rough Pads'
			   ,'RoughPads'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PlayingCards' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Playing Cards'
			   ,'PlayingCards'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'TableMats' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Table Mats'
			   ,'TableMats'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'WristBands' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Wrist Bands'
			   ,'WristBands'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'LuggageTags' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Luggage Tags'
			   ,'LuggageTags'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'PenStands' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Pen Stands'
			   ,'PenStands'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Umbrella' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Umbrella'
			   ,'Umbrella'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'AdjustableBackdrop' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Adjustable Backdrop'
			   ,'AdjustableBackdrop'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'BrochureStand' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Brochure Stand'
			   ,'BrochureStand'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'ManWalker' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Man Walker'
			   ,'ManWalker'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'GymBags' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Gym Bags'
			   ,'GymBags'
			   ,@PromotionalCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Bagpacks' AND ProductCategoryParentID = @PromotionalCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Bagpacks'
			   ,'Bagpacks'
			   ,@PromotionalCategoryID);
END
