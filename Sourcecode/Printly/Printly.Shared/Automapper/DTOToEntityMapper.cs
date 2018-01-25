using AutoMapper;
using Printly.DTO.Product;
using Printly.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
