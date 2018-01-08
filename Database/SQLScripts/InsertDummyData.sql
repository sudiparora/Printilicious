USE [printilicious]
GO

INSERT INTO [dbo].[tblProductGroup]
           ([ProductGroupName]
           ,[ProductGroupDesc])
     VALUES
           ('Personalized'
           ,'Personalized Products')
GO


INSERT INTO [dbo].[tblProductGroup]
           ([ProductGroupName]
           ,[ProductGroupDesc])
     VALUES
           ('Business'
           ,'Business Products')
GO

INSERT INTO [dbo].[tblProductCategory]
           ([ProductGroupID]
           ,[ProductCategoryName]
           ,[ProductCategoryDesc])
     VALUES
           (1
           ,'Stationery' 
           ,'Stationery')
GO

INSERT INTO [dbo].[tblProductCategory]
           ([ProductGroupID]
           ,[ProductCategoryName]
           ,[ProductCategoryDesc])
     VALUES
           (1
           ,'Clothing' 
           ,'Clothing')

GO

USE [printilicious]
GO

INSERT INTO [dbo].[tblProduct]
           ([ProductCategoryID]
           ,[ProductName]
           ,[ProductDesc])
     VALUES
           (1
           ,'Pens'
           ,'Pens')
GO


INSERT INTO [dbo].[tblProduct]
           ([ProductCategoryID]
           ,[ProductName]
           ,[ProductDesc])
     VALUES
           (1
           ,'Diaries'
           ,'Diaries')
GO


INSERT INTO [dbo].[tblProduct]
           ([ProductCategoryID]
           ,[ProductName]
           ,[ProductDesc])
     VALUES
           (1
           ,'Notebooks'
           ,'Notebooks')
GO

INSERT INTO [dbo].[tblProduct]
           ([ProductCategoryID]
           ,[ProductName]
           ,[ProductDesc])
     VALUES
           (2
           ,'Caps'
           ,'Caps')
GO

INSERT INTO [dbo].[tblProduct]
           ([ProductCategoryID]
           ,[ProductName]
           ,[ProductDesc])
     VALUES
           (2
           ,'T-shirts'
           ,'T-shirts')
GO