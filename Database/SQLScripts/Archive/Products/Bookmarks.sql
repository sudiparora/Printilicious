DECLARE @BookmarksCategoryID INT
SELECT @BookmarksCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'Bookmarks'

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-1')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-1'
			   ,@BookmarksCategoryID
			   ,'Bookmark 1'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-2')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-2'
			   ,@BookmarksCategoryID
			   ,'Bookmark 2'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-3')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-3'
			   ,@BookmarksCategoryID
			   ,'Bookmark 3'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-4')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-4'
			   ,@BookmarksCategoryID
			   ,'Bookmark 4'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-5')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-5'
			   ,@BookmarksCategoryID
			   ,'Bookmark 5'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-6')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-6'
			   ,@BookmarksCategoryID
			   ,'Bookmark 6'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-7')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-7'
			   ,@BookmarksCategoryID
			   ,'Bookmark 7'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-8')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-8'
			   ,@BookmarksCategoryID
			   ,'Bookmark 8'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-9')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-9'
			   ,@BookmarksCategoryID
			   ,'Bookmark 9'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-10')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-10'
			   ,@BookmarksCategoryID
			   ,'Bookmark 10'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-11')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-11'
			   ,@BookmarksCategoryID
			   ,'Bookmark 11'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-12')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-12'
			   ,@BookmarksCategoryID
			   ,'Bookmark 12'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-13')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-13'
			   ,@BookmarksCategoryID
			   ,'Bookmark 13'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-14')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-14'
			   ,@BookmarksCategoryID
			   ,'Bookmark 14'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-15')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-15'
			   ,@BookmarksCategoryID
			   ,'Bookmark 15'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-16')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-16'
			   ,@BookmarksCategoryID
			   ,'Bookmark 16'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-17')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-17'
			   ,@BookmarksCategoryID
			   ,'Bookmark 17'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-18')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-18'
			   ,@BookmarksCategoryID
			   ,'Bookmark 18'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-19')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-19'
			   ,@BookmarksCategoryID
			   ,'Bookmark 19'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-20')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-20'
			   ,@BookmarksCategoryID
			   ,'Bookmark 20'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-21')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-21'
			   ,@BookmarksCategoryID
			   ,'Bookmark 21'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-22')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-22'
			   ,@BookmarksCategoryID
			   ,'Bookmark 22'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-23')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-23'
			   ,@BookmarksCategoryID
			   ,'Bookmark 23'
			   ,'Bookmark Desc')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'pp-st-bm-24')
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('pp-st-bm-24'
			   ,@BookmarksCategoryID
			   ,'Bookmark 24'
			   ,'Bookmark Desc')
END
