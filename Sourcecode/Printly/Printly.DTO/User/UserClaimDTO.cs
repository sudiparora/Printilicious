using Printly.DTO.Base;

namespace Printly.DTO.User
{
    public class UserClaimDTO: DTOBase
    {
        public string Id { get; set; }

        public string ClaimType { get; set; }

        public string ClaimValue { get; set; }
    }
}
