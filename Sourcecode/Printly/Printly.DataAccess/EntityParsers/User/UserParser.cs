using Printly.DataAccess.Constants;
using Printly.DataAccess.Interfaces;
using Printly.Entities;
using Printly.Entities.Base;
using System;
using System.Data.SqlClient;

namespace Printly.DataAccess.EntityParsers
{
    public class UserParser : IEntityParser
    {

        private int ord_UserId;
        private int ord_PasswordHash;
        private int ord_Email;
        private int ord_PhoneNumber;
        private int ord_IsEmailConfirmed;
        private int ord_AccessFailedCount;
        private int ord_LockoutEnabled;

        public EntityBase PopulateEntity(SqlDataReader reader)
        {
            User user = new User();
            if (!reader.IsDBNull(ord_UserId)) user.Id = reader.GetString(ord_UserId);
            if (!reader.IsDBNull(ord_PasswordHash)) user.PasswordHash = reader.GetString(ord_PasswordHash);
            if (!reader.IsDBNull(ord_Email)) user.Email = reader.GetString(ord_Email);
            if (!reader.IsDBNull(ord_PhoneNumber)) user.PhoneNumber = reader.GetString(ord_PhoneNumber);
            if (!reader.IsDBNull(ord_IsEmailConfirmed)) user.IsEmailConfirmed = reader.GetBoolean(ord_IsEmailConfirmed);
            if (!reader.IsDBNull(ord_AccessFailedCount)) user.AccessFailedCount = reader.GetInt32(ord_AccessFailedCount);
            if (!reader.IsDBNull(ord_LockoutEnabled)) user.LockoutEnabled = reader.GetBoolean(ord_LockoutEnabled);
            return user;
        }

        public void PopulateOrdinals(SqlDataReader reader)
        {
            ord_UserId = reader.GetOrdinal(DBColumnConstants.USERID);
            ord_PasswordHash = reader.GetOrdinal(DBColumnConstants.PASSWORDHASH);
            ord_Email = reader.GetOrdinal(DBColumnConstants.EMAIL);
            ord_PhoneNumber = reader.GetOrdinal(DBColumnConstants.PHONENUMBER);
            ord_IsEmailConfirmed = reader.GetOrdinal(DBColumnConstants.ISEMAILCONFIRMED);
            ord_AccessFailedCount = reader.GetOrdinal(DBColumnConstants.ACCESSFAILEDCOUNT);
            ord_LockoutEnabled = reader.GetOrdinal(DBColumnConstants.LOCKOUTENABLED);
        }

        public SqlParameter[] PopulateParameters(EntityBase entity)
        {
            throw new NotImplementedException();
        }
    }
}
