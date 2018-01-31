using AutoMapper;
using Printly.DTO.Product;
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
        }
    }
}
