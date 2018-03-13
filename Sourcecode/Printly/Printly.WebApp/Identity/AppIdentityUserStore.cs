using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using Printly.Business.BDC;
using Printly.Shared.Core;
using Printly.DTO.User;
using Printly.WebApp.Models;

namespace Printly.WebApp.Identity
{
    public class AppIdentityUserStore<TUser> : IUserStore<TUser>,
                                        IUserPasswordStore<TUser>,
                                        IUserEmailStore<TUser>, 
                                        IUserPhoneNumberStore<TUser>
        where TUser : ApplicationUser
    {

        public AppIdentityUserStore(ApplicationDbContext context)
        {

        }

        public Task SetPasswordHashAsync(TUser user, string passwordHash)
        {
            return Task.FromResult(user.PasswordHash = passwordHash);
        }

        public Task<TUser> FindByNameAsync(string userName)
        {
            return Task.FromResult<TUser>(null);
        }

        public Task<string> GetEmailAsync(TUser user)
        {
            return Task.FromResult(user.Email);
        }

        public Task<TUser> FindByEmailAsync(string email)
        {
            OperationResult<UserDTO> userDTOResult = DependencyFactory.Resolve<UserBDC>().FindUserByEmailId(email);
            if (userDTOResult.IsSuccessful && userDTOResult.Result != null)
            {
                return Task.FromResult((TUser)new AppIdentityUser { Email = userDTOResult.Result.Email });
            }
            else
            {
                return Task.FromResult<TUser>(null);
            }
        }

        public Task CreateAsync(TUser user)
        {
            UserDTO userDTO = new UserDTO { Email = user.Email, PasswordHash = user.PasswordHash, Id = user.Id };
            OperationResult<bool> createNewUserResult = DependencyFactory.Resolve<UserBDC>().CreateNewUser(userDTO);
            return Task.FromResult(0);
        }

        public Task<string> GetPhoneNumberAsync(TUser user)
        {
            return Task.FromResult(user.PhoneNumber);
        }

        public Task<TUser> FindByIdAsync(string userId)
        {
            OperationResult<UserDTO> findUserByIdResult = DependencyFactory.Resolve<UserBDC>().FindUserByUserId(userId);
            if (findUserByIdResult.IsSuccessful && findUserByIdResult.Result != null)
            {
                return Task.FromResult((TUser)new ApplicationUser { Email = findUserByIdResult.Result.Email });
            }
            else
            {
                return Task.FromResult<TUser>(null);
            }
        }

        #region Not Implemented Methods

        public Task DeleteAsync(TUser user)
        {
            throw new NotImplementedException();
        }

        public void Dispose()
        {
            //throw new NotImplementedException();
        }

        public Task<bool> GetEmailConfirmedAsync(TUser user)
        {
            throw new NotImplementedException();
        }

        public Task<string> GetPasswordHashAsync(TUser user)
        {
            throw new NotImplementedException();
        }

        public Task<bool> HasPasswordAsync(TUser user)
        {
            throw new NotImplementedException();
        }

        public Task SetEmailAsync(TUser user, string email)
        {
            throw new NotImplementedException();
        }

        public Task SetEmailConfirmedAsync(TUser user, bool confirmed)
        {
            throw new NotImplementedException();
        }

        public Task UpdateAsync(TUser user)
        {
            throw new NotImplementedException();
        }

        #region IUserPhoneNumberStore Implementation

        public Task SetPhoneNumberAsync(TUser user, string phoneNumber)
        {
            throw new NotImplementedException();
        }

        public Task<bool> GetPhoneNumberConfirmedAsync(TUser user)
        {
            throw new NotImplementedException();
        }

        public Task SetPhoneNumberConfirmedAsync(TUser user, bool confirmed)
        {
            throw new NotImplementedException();
        }

        #endregion

        #endregion
    }
}