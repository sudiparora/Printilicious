DECLARE @BookmarksCategoryID INT
SELECT @BookmarksCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'Bookmarks'

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_1')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_1'
			   ,@BookmarksCategoryID
			   ,'Bookmark 1'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_2')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_2'
			   ,@BookmarksCategoryID
			   ,'Bookmark 2'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_3')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_3'
			   ,@BookmarksCategoryID
			   ,'Bookmark 3'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_4')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_4'
			   ,@BookmarksCategoryID
			   ,'Bookmark 4'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_5')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_5'
			   ,@BookmarksCategoryID
			   ,'Bookmark 5'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_6')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_6'
			   ,@BookmarksCategoryID
			   ,'Bookmark 6'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_7')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_7'
			   ,@BookmarksCategoryID
			   ,'Bookmark 7'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_8')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_8'
			   ,@BookmarksCategoryID
			   ,'Bookmark 8'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_9')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_9'
			   ,@BookmarksCategoryID
			   ,'Bookmark 9'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_10')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_10'
			   ,@BookmarksCategoryID
			   ,'Bookmark 10'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_11')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_11'
			   ,@BookmarksCategoryID
			   ,'Bookmark 11'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_12')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_12'
			   ,@BookmarksCategoryID
			   ,'Bookmark 12'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_13')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_13'
			   ,@BookmarksCategoryID
			   ,'Bookmark 13'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_14')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_14'
			   ,@BookmarksCategoryID
			   ,'Bookmark 14'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_15')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_15'
			   ,@BookmarksCategoryID
			   ,'Bookmark 15'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_16')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_16'
			   ,@BookmarksCategoryID
			   ,'Bookmark 16'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_17')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_17'
			   ,@BookmarksCategoryID
			   ,'Bookmark 17'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_18')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_18'
			   ,@BookmarksCategoryID
			   ,'Bookmark 18'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_19')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_19'
			   ,@BookmarksCategoryID
			   ,'Bookmark 19'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_20')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_20'
			   ,@BookmarksCategoryID
			   ,'Bookmark 20'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_21')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_21'
			   ,@BookmarksCategoryID
			   ,'Bookmark 21'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_22')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_22'
			   ,@BookmarksCategoryID
			   ,'Bookmark 22'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_23')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_23'
			   ,@BookmarksCategoryID
			   ,'Bookmark 23'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp_st_bm_24')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp_st_bm_24'
			   ,@BookmarksCategoryID
			   ,'Bookmark 24'
			   ,'Bookmark Desc')
END
