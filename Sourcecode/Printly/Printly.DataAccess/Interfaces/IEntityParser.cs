using Printly.Entities.Base;
using System.Data.SqlClient;

namespace Printly.DataAccess.Interfaces
{
    public interface IEntityParser
    {
        EntityBase PopulateEntity(SqlDataReader reader);
        void PopulateOrdinals(SqlDataReader reader);
        SqlParameter[] PopulateParameters(EntityBase entity);
    }
}
