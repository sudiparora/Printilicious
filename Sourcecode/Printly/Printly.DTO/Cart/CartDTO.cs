using Printly.DTO.Base;

namespace Printly.DTO.Cart
{
    public class CartDTO : DTOBase
    {
        public string CartId { get; set; }
        public string UserId { get; set; }
        public int ItemCount { get; set; }
        public decimal CartTotal { get; set; }

    }
}
