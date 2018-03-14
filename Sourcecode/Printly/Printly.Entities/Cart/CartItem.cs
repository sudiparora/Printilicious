using Printly.Entities.Base;

namespace Printly.Entities
{
    public class CartItem : EntityBase
    {
        public string CartId { get; set; }
        public int ProductId { get; set; }
        public int Quantity { get; set; }

    }
}
