namespace Printly.DataAccess.Constants
{
    internal class DBConstants
    {
        internal const string DATABASECONNECTIONSTRING = "SqlDataConString";
    }

    internal class SPConstants
    {
        internal const string SP_GET_ALL_PRODUCTGROUPS = "usp_FetchProductGroupCategories";
    }

    internal class DBColumnConstants
    {
        internal const string PRODUCTGROUPID = "ProductGroupID";
        internal const string PRODUCTGROUPNAME = "ProductGroupName";
        internal const string PRODUCTGROUPDESC = "ProductGroupDesc";
        internal const string PRODUCTCATEGORYID = "ProductCategoryID";
        internal const string PRODUCTCATEGORYNAME = "ProductCategoryName";
        internal const string PRODUCTCATEGORYDESC = "ProductCategoryDesc";
        internal const string PRODUCTID = "ProductID";
        internal const string PRODUCTNAME = "ProductName";
        internal const string PRODUCTDESC = "ProductDesc";
    }
}
