using System.Collections.Generic;
using Printly.Entities.Base;

namespace Printly.Entities
{
    public class User : EntityBase
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string PasswordHash { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public bool IsEmailConfirmed { get; set; }
        public int AccessFailedCount { get; set; }
        public bool LockoutEnabled { get; set; }
        public List<UserClaim> Claims { get; private set; }
        public List<UserRole> Roles { get; private set; }
        public List<UserLogin> Logins { get; private set; }

    }
}
