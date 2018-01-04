using Printly.DataAccess.Interfaces;
using System;

namespace Printly.DataAccess
{
    internal sealed class EntityParserFactory
    {
        internal IEntityParser GetParser(Type entityType)
        {
            IEntityParser parser = null;
            switch (entityType.Name)
            {
               
            }
            return parser;
        }
    }
}
