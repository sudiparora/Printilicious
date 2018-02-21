using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Printly.WebApp.Identity
{
    public class AppIdentityUser: IUser
    {
        public AppIdentityUser()
        {
            Id = Guid.NewGuid().ToString();
        }

        public string Id { get; set; }
        public string UserName { get; set; }
        public string PasswordHash { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public bool IsEmailConfirmed { get; set; }
        public int AccessFailedCount { get; set; }
        public bool LockoutEnabled { get; set; }
    }
}