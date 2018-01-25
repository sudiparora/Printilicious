using Printly.DataAccess.Interfaces;
using Printly.Entities.Base;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Printly.DataAccess.Common
{
    public class EntityParserHelper
    {
        /// <summary>
        /// http://geekswithblogs.net/BlackRabbitCoder/archive/2010/05/19/c-system.lazylttgt-and-the-singleton-design-pattern.aspx
        /// The .net provided lazy initialization and singleton design pattern usage
        /// </summary>
        private static readonly Lazy<EntityParserFactory> entityParserFactoryInstance
            = new Lazy<EntityParserFactory>(() => new EntityParserFactory());


        internal static EntityParserFactory EntityParserFactoryInstance
        {
            get
            {
                return entityParserFactoryInstance.Value;
            }
        }

        /// <summary>
        /// This method gets the parser object corresponding to the entity in question and returns
        /// a single entity object using the data reader object passed.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="reader"></param>
        /// <returns></returns>
        public static EntityBase PopulateEntity<T>(SqlDataReader reader)
        {
            IEntityParser parser = EntityParserFactoryInstance.GetParser(typeof(T));
            parser.PopulateOrdinals(reader);
            return parser.PopulateEntity(reader);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <typeparam name="S"></typeparam>
        /// <param name="reader"></param>
        /// <param name="entity"></param>
        /// <returns></returns>
        //public static EntityBase PopulateEntity<T, S>(SqlDataReader reader, S entity)
        //    where S : T
        //    where T : EntityBase
        //{
        //    IParentEntityParser parser = EntityParserFactoryInstance.GetParentParser(typeof(T));
        //    parser.PopulateOrdinals(reader);
        //    return parser.PopulateEntity(reader, entity);
        //}
    }
}
