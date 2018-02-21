namespace Printly.DataAccess.Constants
{
    internal class DBConstants
    {
        internal const string DATABASECONNECTIONSTRING = "SqlDataConString";
    }

    internal class SPConstants
    {
        internal const string SP_GET_ALL_PRODUCTGROUPS = "usp_FetchProductGroupCategories";
        internal const string SP_FIND_USER_BY_EMAILID = "usp_FindUserByEmailId";
        internal const string SP_CREATE_NEW_USER = "usp_CreateNewUser";
    }

    internal class DBColumnConstants
    {
        internal const string PRODUCTID = "ProductID";
        internal const string PRODUCTNAME = "ProductName";
        internal const string PRODUCTDESC = "ProductDesc";
        internal const string PRODUCTGROUPID = "ProductGroupID";
        internal const string PRODUCTGROUPNAME = "ProductGroupName";
        internal const string PRODUCTGROUPDESC = "ProductGroupDesc";
        internal const string PRODUCTCATEGORYID = "ProductCategoryID";
        internal const string PRODUCTCATEGORYNAME = "ProductCategoryName";
        internal const string PRODUCTCATEGORYDESC = "ProductCategoryDesc";

        internal const string USERID = "UserID";
        internal const string PASSWORDHASH = "PasswordHash";
        internal const string EMAIL = "Email";
        internal const string PHONENUMBER = "PhoneNumber";
        internal const string ISEMAILCONFIRMED = "IsEmailConfirmed";
        internal const string ACCESSFAILEDCOUNT = "AccessFailedCount";
        internal const string LOCKOUTENABLED = "LockoutEnabled";


    }
}
