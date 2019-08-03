DECLARE @WallClockCategoryID INT 
SELECT @WallClockCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'WallClocks'

--12*12 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_1A' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_1A'
			   ,@WallClockCategoryID
			   ,'Just Married'
			   ,'Acrylic clock dome with pendulum')
END

--12*12 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_1B' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_1B'
			   ,@WallClockCategoryID
			   ,'Its my Gang'
			   ,'Acrylic clock dome with pendulum')
END

--12*12 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_1C' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_1C'
			   ,@WallClockCategoryID
			   ,'Couple'
			   ,'Acrylic clock dome with pendulum')
END

--12*12 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_1D' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_1D'
			   ,@WallClockCategoryID
			   ,'Wedding Memories'
			   ,'Acrylic clock dome with pendulum')
END

--12*12 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_1E' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_1E'
			   ,@WallClockCategoryID
			   ,'Happy Birthday'
			   ,'Acrylic clock dome with pendulum')
END

--12*12 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_1F' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_1F'
			   ,@WallClockCategoryID
			   ,'Happy Mothers Day'
			   ,'Acrylic clock dome with pendulum')
END

--12*12 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_2' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_2'
			   ,@WallClockCategoryID
			   ,'Heart Shaped'
			   ,'PVC Clock')
END

--12*12 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_3A' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_3A'
			   ,@WallClockCategoryID
			   ,'Memories'
			   ,'Wood Clock with Night Glow Numbers')
END

--12*12 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_3B' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_3B'
			   ,@WallClockCategoryID
			   ,'Friends'
			   ,'Wood Clock with Night Glow Numbers')
END

--24*24 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_44A' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_44A'
			   ,@WallClockCategoryID
			   ,'Friends'
			   ,'Big Wooden Wall Clock')
END

--24*24 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_44B' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_44B'
			   ,@WallClockCategoryID
			   ,'Memory'
			   ,'Big Wooden Wall Clock')
END

--24*24 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_44C' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_44C'
			   ,@WallClockCategoryID
			   ,'Photo Collage'
			   ,'Big Wooden Wall Clock')
END

--24*24 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_44D' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_44D'
			   ,@WallClockCategoryID
			   ,'Bunch of Hearts'
			   ,'Big Wooden Wall Clock')
END

--24*24 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_44E' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_44E'
			   ,@WallClockCategoryID
			   ,'LOVE Collage'
			   ,'Big Wooden Wall Clock')
END

-- 8*8 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_105' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_105'
			   ,@WallClockCategoryID
			   ,'Wall Clock'
			   ,'Wall Clock')
END


IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_123' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_123'
			   ,@WallClockCategoryID
			   ,'Wall Clock'
			   ,'Wall Clock')
END


--5*8 inch
IF NOT EXISTS(SELECT 1 FROM tblProduct WHERE ProductCode = 'per_wc_pc_131' AND ProductCategoryID = @WallClockCategoryID)
BEGIN
	INSERT INTO [dbo].[tblProduct]
			   ([ProductCode]
			   ,[ProductCategoryID]
			   ,[ProductName]
			   ,[ProductDesc])
		 VALUES
			   ('per_wc_pc_131'
			   ,@WallClockCategoryID
			   ,'Emoji Clock'
			   ,'Small Wooden Clock')
END

GO


