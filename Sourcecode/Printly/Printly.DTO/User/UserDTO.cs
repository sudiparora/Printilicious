using Printly.DTO.Base;
using System.Collections.Generic;

namespace Printly.DTO.User
{
    public class UserDTO : DTOBase
    {
        public string Id { get; set; }
        public string UserName { get; set; }
        public string PasswordHash { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public bool IsEmailConfirmed { get; set; }
        public int AccessFailedCount { get; set; }
        public bool LockoutEnabled { get; set; }
        public List<UserClaimDTO> Claims { get; private set; }
        public List<UserRoleDTO> Roles { get; private set; }
        public List<UserLoginDTO> Logins { get; private set; }


    }
}
