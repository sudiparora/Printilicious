using Printly.DTO.Base;

namespace Printly.DTO.Product
{
    public class ProductDTO : DTOBase
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public string ProductDesc { get; set; }
        public string ProductCode { get; set; }
    }
}
