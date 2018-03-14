using Printly.DTO.Base;

namespace Printly.DTO.Cart
{
    public class CartItemDTO : DTOBase
    {

        public string CartId { get; set; }
        public int ProductId { get; set; }
        public int Quantity { get; set; }

    }
}
