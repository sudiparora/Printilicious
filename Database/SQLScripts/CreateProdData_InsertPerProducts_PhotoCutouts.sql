DECLARE @PhotoCutoutsCategoryID INT 
SELECT @PhotoCutoutsCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'PhotoCutouts'


IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_4'
			   ,@PhotoCutoutsCategoryID
			   ,'Couple Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_5' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_6A' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_6A'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_6B' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_6B'
			   ,@PhotoCutoutsCategoryID
			   ,'Posture'
			   ,'Wooden Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_6C' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_6C'
			   ,@PhotoCutoutsCategoryID
			   ,'SuperDad'
			   ,'Wooden Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END

IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_pc_pc_4' AND ProductCategoryID = @PhotoCutoutsCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_pc_pc_5'
			   ,@PhotoCutoutsCategoryID
			   ,'Wedding Photo Cutout'
			   ,'Acrylic Curve Cutout')
END