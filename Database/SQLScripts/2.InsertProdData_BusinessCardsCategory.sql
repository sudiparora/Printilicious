DECLARE @BusinessCardsCategoryID INT 
DECLARE @PersonalizedProductsCategoryID INT 
DECLARE @OfficeProductsCategoryID INT 
DECLARE @MarketingSuppliesCategoryID INT 
DECLARE @PremiumGiftsCategoryID INT 

SELECT @BusinessCardsCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'BusinessCards'
SELECT @PersonalizedProductsCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'PersonalizedProducts'
SELECT @OfficeProductsCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'OfficeProducts'
SELECT @MarketingSuppliesCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'MarketingSupplies'
SELECT @PremiumGiftsCategoryID = ProductCategoryID FROM tblProductCategory WHERE ProductCategoryCode = 'PremiumGifts'

