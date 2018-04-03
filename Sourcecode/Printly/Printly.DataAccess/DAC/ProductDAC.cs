
using Printly.DataAccess.Base;
using Printly.DataAccess.Constants;
using Printly.Entities;
using Printly.Shared.Core;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;

namespace Printly.DataAccess.DAC
{
    public class ProductDAC: EntityDACBase
    {

        /// <summary>
        /// Method to return all the product groups alongwith product categories and the associated products.
        /// </summary>
        /// <returns></returns>
        //public OperationResult<List<ProductGroup>> GetAllProductGroups()
        //{
        //    try
        //    {
        //        List<ProductGroup> productGroups = new List<ProductGroup>();
        //        SqlCommand command = GetDbSprocCommand(SPConstants.SP_GET_ALL_PRODUCTGROUPS);
        //        productGroups = GetEntities<ProductGroup>(ref command);
        //        int i = 5;
        //        int r = 0;
        //        int k = i / r;
        //        return OperationResult<List<ProductGroup>>.ReturnSuccessResult(productGroups);
        //    }
        //    catch (Exception ex)
        //    {
        //        return OperationResult<List<ProductGroup>>.LogAndReturnFailureResult(ex);
        //    }
        //}

        public OperationResult<List<ProductCategory>> GetAllProductCategories()
        {
            try
            {
                List<ProductCategory> productGroups = new List<ProductCategory>();
                SqlCommand command = GetDbSprocCommand(SPConstants.SP_GET_ALL_PRODUCTCATEGORIES);
                productGroups = GetEntities<ProductCategory>(ref command).OrderBy(x => x.ProductCategoryID).ToList();
                return OperationResult<List<ProductCategory>>.ReturnSuccessResult(productGroups);
            }
            catch (Exception ex)
            {
                return OperationResult<List<ProductCategory>>.LogAndReturnFailureResult(ex);
            }
        }

        public OperationResult<List<Product>> GetAllProductsForCategory(string categoryCode)
        {
            try
            {
                List<Product> categoryProducts = new List<Product>();
                SqlCommand command = GetDbSprocCommand(SPConstants.SP_GET_PRODUCTS_FOR_CATEGORY);
                command.Parameters.Add(CreateParameter("@CategoryCode", categoryCode));
                categoryProducts = GetEntities<Product>(ref command);
                return OperationResult<List<Product>>.ReturnSuccessResult(categoryProducts);
            }
            catch (Exception ex)
            {
                return OperationResult<List<Product>>.LogAndReturnFailureResult(ex);
            }
        }

        public OperationResult<Product> GetProductDetails(string productCode)
        {
            try
            {
                Product product = new Product();
                SqlCommand command = GetDbSprocCommand(SPConstants.SP_GET_PRODUCT_DETAIL);
                command.Parameters.Add(CreateParameter("@ProductCode", productCode));
                product = GetSingleEntity<Product>(ref command);
                return OperationResult<Product>.ReturnSuccessResult(product);
            }
            catch (Exception ex)
            {
                return OperationResult<Product>.LogAndReturnFailureResult(ex);
            }

        }
    }
}
