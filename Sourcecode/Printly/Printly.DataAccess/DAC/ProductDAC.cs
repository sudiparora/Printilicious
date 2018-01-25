using Printly.DataAccess.Base;
using Printly.DataAccess.Constants;
using Printly.Entities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Printly.DataAccess.DAC
{
    public class ProductDAC: EntityDACBase
    {

        /// <summary>
        /// Method to return all the product groups alongwith product categories and the associated products.
        /// </summary>
        /// <returns></returns>
        public List<ProductGroup> GetAllProductGroups()
        {
            List<ProductGroup> allProductGroups = new List<ProductGroup>();
            try
            {
                List<ProductGroup> productGroups = new List<ProductGroup>();
                SqlCommand command = GetDbSprocCommand(SPConstants.SP_GET_ALL_PRODUCTGROUPS);
                productGroups = GetEntities<ProductGroup>(ref command);
                return productGroups;
            }
            catch (Exception ex)
            {
                allProductGroups = null;
            }
            return allProductGroups;
        }

    }
}
