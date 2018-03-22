
using Printly.DataAccess.Base;
using Printly.DataAccess.Constants;
using Printly.Entities;
using Printly.Shared.Core;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

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
                productGroups = GetEntities<ProductCategory>(ref command);
                return OperationResult<List<ProductCategory>>.ReturnSuccessResult(productGroups);
            }
            catch (Exception ex)
            {
                return OperationResult<List<ProductCategory>>.LogAndReturnFailureResult(ex);
            }
        }
    }
}
