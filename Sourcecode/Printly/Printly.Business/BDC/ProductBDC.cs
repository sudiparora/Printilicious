using AutoMapper;
using Printly.Business.Base;
using Printly.DataAccess.DAC;
using Printly.DTO.Product;
using Printly.Entities;
using Printly.Shared.Core;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Printly.Business.BDC
{
    public class ProductBDC: EntityBDCBase
    {
        //public List<ProductGroupDTO> GetAllProductGroups()
        //{
        //    List<ProductGroupDTO> allProductGroupDTOs = new List<ProductGroupDTO>();
        //    try
        //    {
        //        OperationResult<List<ProductGroup>> allProductGroups = DependencyFactory.Resolve<ProductDAC>().GetAllProductGroups();
        //        if (allProductGroups.IsSuccessful)
        //        {
        //            foreach (ProductGroup productGroup in allProductGroups.Result)
        //            {
        //                //Finding the matching Product Group
        //                ProductGroupDTO existingProductGroup =
        //                    allProductGroupDTOs.FirstOrDefault(item => item.ProductGroupID == productGroup.ProductGroupID);

        //                if (existingProductGroup == null)
        //                {
        //                    //If Matching Product Group doesn't exist, it is a new entry for ProductGroup, ProductCategory and Product.
        //                    //Mapping Entity objects to DTO's, and adding them to the dto collection.

        //                    existingProductGroup = Mapper.Map<ProductGroup, ProductGroupDTO>(productGroup);
        //                    ProductCategoryDTO productCategoryDTO = Mapper.Map<ProductCategory, ProductCategoryDTO>(productGroup.ChildProductCategory);
        //                    ProductDTO productDTO = Mapper.Map<Product, ProductDTO>(productGroup.ChildProductCategory.ChildProduct);
        //                    productCategoryDTO.Products = new List<ProductDTO>();
        //                    productCategoryDTO.Products.Add(productDTO);
        //                    existingProductGroup.ProductCategories = new List<ProductCategoryDTO>();
        //                    existingProductGroup.ProductCategories.Add(productCategoryDTO);
        //                    allProductGroupDTOs.Add(existingProductGroup);
        //                }
        //                else
        //                {
        //                    // If Product Group exist, then we first find the matching Product Category.

        //                    ProductCategoryDTO existingProductCategory
        //                        = existingProductGroup.ProductCategories.FirstOrDefault(item => item.ProductCategoryID == productGroup.ChildProductCategory.ProductCategoryID);
        //                    if (existingProductCategory == null)
        //                    {

        //                        // If Matching Product Category doesn't exist, it is a new entry for ProductCategory and Product for existing Product Group
        //                        // Mapping Entity objects to DTO's, and adding the ProductCategory and Product to existing Product Group

        //                        ProductCategoryDTO productCategoryDTO = Mapper.Map<ProductCategory, ProductCategoryDTO>(productGroup.ChildProductCategory);
        //                        ProductDTO productDTO = Mapper.Map<Product, ProductDTO>(productGroup.ChildProductCategory.ChildProduct);
        //                        productCategoryDTO.Products = new List<ProductDTO>();
        //                        productCategoryDTO.Products.Add(productDTO);
        //                        allProductGroupDTOs.First(item => item.ProductGroupID == existingProductGroup.ProductGroupID).ProductCategories.Add(productCategoryDTO);
        //                    }
        //                    else
        //                    {
        //                        // If Matching Product Category Exist, then it is just a new entry for Product for existing Product Category for the existing Product Group
        //                        // Mapping Entity objects to DTO, and adding the Product to existing Product Category belonging to the existing Product Group.

        //                        ProductDTO productDTO = Mapper.Map<Product, ProductDTO>(productGroup.ChildProductCategory.ChildProduct);
        //                        allProductGroupDTOs.First(item => item.ProductGroupID == existingProductGroup.ProductGroupID)
        //                                           .ProductCategories.First(item1 => item1.ProductCategoryID == existingProductCategory.ProductCategoryID)
        //                                           .Products.Add(productDTO);
        //                    }
        //                }
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        allProductGroupDTOs = null;
        //    }
        //    return allProductGroupDTOs;
        //}

        public List<ProductCategoryDTO> GetAllProductCategories()
        {
            List<ProductCategoryDTO> allProductCategoryDTOs = new List<ProductCategoryDTO>();
            try
            {
                OperationResult<List<ProductCategory>> allProductCategories = DependencyFactory.Resolve<ProductDAC>().GetAllProductCategories();
                if (allProductCategories.IsSuccessful)
                {
                    foreach (ProductCategory productGroup in allProductCategories.Result)
                    {
                        if (productGroup.ProductCategoryParentID == null)
                        {
                            allProductCategoryDTOs.Add(Mapper.Map<ProductCategory, ProductCategoryDTO>(productGroup));
                        }
                        else
                        {
                            string[] productCategoryParents = productGroup.ProductCategoryParents.Split('.');
                            int productCategoryParentsCount = productCategoryParents.Count();
                            int parentCounter = 0;
                            ProductCategoryDTO parentProductCategory = null;
                            while (productCategoryParentsCount != 0)
                            {
                                if (parentCounter == 0)
                                    parentProductCategory = allProductCategoryDTOs.Where(productCategory => productCategory.ProductCategoryID ==
                                                                    Convert.ToInt32(productCategoryParents[parentCounter])).First();
                                else
                                    parentProductCategory = parentProductCategory.ChildProductCategories.Where(productCategory => productCategory.ProductCategoryID ==
                                                                    Convert.ToInt32(productCategoryParents[parentCounter])).First();
                                productCategoryParentsCount--;
                                parentCounter++;
                            }
                            parentProductCategory.ChildProductCategories.Add(Mapper.Map<ProductCategory, ProductCategoryDTO>(productGroup));
                        }
                    }
                }
            }
            catch(Exception ex)
            {
                allProductCategoryDTOs = null;
            }
            return allProductCategoryDTOs;
        }
    }
}
