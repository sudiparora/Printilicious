﻿using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;

namespace Printly
{
    public class IdentityUserStore<TUser> : IUserStore<TUser>
        where TUser : AppIdentityUser
    {
        public Task CreateAsync(TUser user)
        {
            throw new NotImplementedException();
        }

        public Task DeleteAsync(TUser user)
        {
            throw new NotImplementedException();
        }

        public void Dispose()
        {
            throw new NotImplementedException();
        }

        public Task<TUser> FindByIdAsync(string userId)
        {
            throw new NotImplementedException();
        }

        public Task<TUser> FindByNameAsync(string userName)
        {
            throw new NotImplementedException();
        }

        public Task UpdateAsync(TUser user)
        {
            throw new NotImplementedException();
        }
    }
}