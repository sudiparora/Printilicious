
IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Personalized')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Personalized'
			   ,'Personalized'
			   ,NULL);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Promotional')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Promotional'
			   ,'Promotional'
			   ,NULL);
END

IF NOT EXISTS(SELECT 1 FROM tblProductCategory WHERE ProductCategoryCode = 'Office')
BEGIN
	INSERT INTO [dbo].[tblProductCategory]
			   ([ProductCategoryName]
			   ,[ProductCategoryCode]
			   ,[ProductCategoryParentID])
		 VALUES
			   ('Office'
			   ,'Office'
			   ,NULL);
END
