using Printly.DataAccess.Base;
using Printly.DataAccess.Constants;
using Printly.Entities;
using Printly.Shared.Core;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Printly.DataAccess.DAC
{
    public class UserDAC: EntityDACBase
    {
        public OperationResult<User> FindUserByEmailId(string emailAddress)
        {
            try
            {
                SqlCommand command = GetDbSprocCommand(SPConstants.SP_FIND_USER_BY_EMAILID);
                command.Parameters.Add(CreateParameter("@EmailAddress", emailAddress));
                User user = GetSingleEntity<User>(ref command);
                return OperationResult<User>.ReturnSuccessResult(user);
            }
            catch (Exception ex)
            {
                return OperationResult<User>.LogAndReturnFailureResult(ex);
            }
        }

        public OperationResult<User> FindUserByUserId(string userId)
        {
            try
            {
                SqlCommand command = GetDbSprocCommand(SPConstants.SP_FIND_USER_BY_USERID);
                command.Parameters.Add(CreateParameter("@UserID", userId));
                User user = GetSingleEntity<User>(ref command);
                return OperationResult<User>.ReturnSuccessResult(user);
            }
            catch (Exception ex)
            {
                return OperationResult<User>.LogAndReturnFailureResult(ex);
            }
        }

        public OperationResult<bool> CreateNewUser(User user)
        {
            try
            {
                SqlCommand command = GetDbSprocCommand(SPConstants.SP_CREATE_NEW_USER);
                command.Parameters.Add(CreateParameter("@UserId", user.Id));
                command.Parameters.Add(CreateParameter("@EmailAddress", user.Email));
                command.Parameters.Add(CreateParameter("@PasswordHash", user.PasswordHash));
                command.Parameters.Add(CreateOutputParameter("@IsNewUserCreated", SqlDbType.Bit));
                return OperationResult<bool>.ReturnSuccessResult(GetBoolResults(ref command, "@IsNewUserCreated"));
            }
            catch (Exception ex)
            {
                return OperationResult<bool>.LogAndReturnFailureResult(ex);
            }
        } 

    }
}
