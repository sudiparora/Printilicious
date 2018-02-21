using AutoMapper;
using Printly.Business.Base;
using Printly.DataAccess.DAC;
using Printly.DTO.User;
using Printly.Entities;
using Printly.Shared.Core;
using System;

namespace Printly.Business.BDC
{
    public class UserBDC: EntityBDCBase
    {
        public OperationResult<UserDTO> FindUserByEmailId(string emailAddress)
        {
            try
            {
                OperationResult<User> userResult = DependencyFactory.Resolve<UserDAC>().FindUserByEmailId(emailAddress);
                if (userResult.IsSuccessful)
                {
                    return OperationResult<UserDTO>.ReturnSuccessResult(Mapper.Map<User, UserDTO>(userResult.Result));
                }
                else
                {
                    return OperationResult<UserDTO>.ReturnFailureResult();
                }
            }
            catch(Exception ex)
            {
                return OperationResult<UserDTO>.LogAndReturnFailureResult(ex);
            }
        }

        public OperationResult<bool> CreateNewUser(UserDTO userDTO)
        {
            try
            {
                return DependencyFactory.Resolve<UserDAC>().CreateNewUser(Mapper.Map<UserDTO, User>(userDTO));
            }
            catch (Exception ex)
            {
                return OperationResult<bool>.LogAndReturnFailureResult(ex);
            }
        }

    }
}
