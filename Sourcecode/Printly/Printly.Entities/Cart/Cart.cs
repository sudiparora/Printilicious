using Printly.Entities.Base;
using System.Collections.Generic;

namespace Printly.Entities
{
    public class Cart : EntityBase
    {

        public int Id { get; set; }
        public string CartId { get; set; }
        public string UserId { get; set; }
        public int ItemCount { get; set; }
        public decimal CartTotal { get; set; }
        public List<CartItem> CartItems { get; set; }
    }
}
