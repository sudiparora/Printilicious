
IF OBJECT_ID('usp_FetchProductGroupCategories', 'P') IS NOT NULL
    DROP PROCEDURE usp_FetchProductGroupCategories
GO

CREATE PROCEDURE usp_FetchProductGroupCategories
AS
BEGIN

SELECT prod.ProductID,prod.ProductName, prod.ProductDesc, 
	   prodcat.ProductCategoryID,prodcat.ProductCategoryName,prodcat.ProductCategoryDesc, 
	   prodgrp.ProductGroupID, prodgrp.ProductGroupName, prodgrp.ProductGroupDesc 
	FROM tblProduct AS prod 
	FULL OUTER JOIN tblproductcategory AS prodcat ON prod.productcategoryid = prodcat.productcategoryid 
	FULL OUTER JOIN tblproductgroup AS prodgrp ON prodgrp.productgroupid = prodcat.productgroupid
	ORDER BY prodgrp.ProductGroupName

END

GO


EXEC usp_FetchProductGroupCategories