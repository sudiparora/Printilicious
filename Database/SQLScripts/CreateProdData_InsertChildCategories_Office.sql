DECLARE @OfficeCategoryID INT 
SELECT @OfficeCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'Office'

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'VisitingCards' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Visiting Cards'
			   ,'VisitingCards'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Labels' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Labels'
			   ,'Labels'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Stickers' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Stickers'
			   ,'Stickers'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Posters' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Posters'
			   ,'Posters'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Flyers' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Flyers'
			   ,'Flyers'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Brochures' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Brochures'
			   ,'Brochures'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'TentCards' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Tent Cards'
			   ,'TentCards'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'MoneyClips' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Money Clips'
			   ,'MoneyClips'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Envelopes' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Envelopes'
			   ,'Envelopes'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'LetterHeads' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Letter Heads'
			   ,'LetterHeads'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'VisitingCards' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('VisitingCards'
			   ,'VisitingCards'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Stamps' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Stamps'
			   ,'Stamps'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Pens' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Pens'
			   ,'Pens'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'DiaryOrganizer' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Diary & Organizer'
			   ,'DiaryOrganizer'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Postcards' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Postcards'
			   ,'Postcards'
			   ,@OfficeCategoryID);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Folders' AND ProductCategoryParentID = @OfficeCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Folders'
			   ,'Folders'
			   ,@OfficeCategoryID);
END