using Printly.Business.BDC;
using Printly.DTO.Product;
using Printly.Shared.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Caching;
using System.Web;

namespace Printilicious.App_Start
{
    public class CacheConfig
    {

        private static MemoryCache memoryCache = MemoryCache.Default;

        /// <summary>
        /// http://geekswithblogs.net/BlackRabbitCoder/archive/2010/05/19/c-system.lazylttgt-and-the-singleton-design-pattern.aspx
        /// The .net provided lazy initialization and singleton design pattern usage
        /// </summary>
        private static readonly Lazy<CacheConfig> cacheConfigInstance
            = new Lazy<CacheConfig>(() => new CacheConfig());

        internal static CacheConfig Instance
        {
            get
            {
                return cacheConfigInstance.Value;
            }
        }

        public List<ProductCategoryDTO> ProductCategories
        {
            get
            {
                if (!memoryCache.Contains(CacheConstants.PRODUCT_CATEGORIES_CACHE_ITEM))
                {
                    FetchProductCategoriesAndAddToCache();
                }
                return memoryCache.Get(CacheConstants.PRODUCT_CATEGORIES_CACHE_ITEM) as List<ProductCategoryDTO>;
            }
        }

        public void InitializeCache()
        {
            FetchProductCategoriesAndAddToCache();
        }

        private void FetchProductCategoriesAndAddToCache()
        {
            var productCategories = DependencyFactory.Resolve<ProductBDC>().GetAllProductCategories();
            CacheItemPolicy cacheItemPolicy = new CacheItemPolicy();
            cacheItemPolicy.AbsoluteExpiration = DateTime.Now.AddDays(1);
            memoryCache.Add(CacheConstants.PRODUCT_CATEGORIES_CACHE_ITEM, productCategories, cacheItemPolicy);
        }

    }

    public class CacheConstants
    {
        public const string PRODUCT_CATEGORIES_CACHE_ITEM = "ProductCategories";
    }
}