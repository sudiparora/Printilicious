using AutoMapper;
using Printly.DTO.Product;
using Printly.DTO.User;
using Printly.Entities;

namespace Printly.Shared.Automapper
{
    public class DTOToEntityMapper: Profile
    {
        public DTOToEntityMapper()
        {
            CreateMap<ProductDTO, Product>().ReverseMap();
            CreateMap<ProductGroupDTO, ProductGroup>().ReverseMap();
            CreateMap<ProductCategoryDTO, ProductCategory>().ReverseMap();

            CreateMap<UserDTO, User>().ReverseMap();
            CreateMap<UserClaimDTO, UserClaim>().ReverseMap();
            CreateMap<UserLoginDTO, UserLogin>().ReverseMap();
            CreateMap<UserRoleDTO, UserRole>().ReverseMap();
        }
    }
}
