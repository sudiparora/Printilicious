using Printly.Entities.Base;

namespace Printly.Entities
{
    public class Product: EntityBase
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public string ProductDesc { get; set; }
    }
}
