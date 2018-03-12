using NLog;
using System;

namespace Printly.Shared.Core
{
    public class LogFactory
    {

        /// <summary>
        /// http://geekswithblogs.net/BlackRabbitCoder/archive/2010/05/19/c-system.lazylttgt-and-the-singleton-design-pattern.aspx
        /// The .net provided lazy initialization and singleton design pattern usage
        /// </summary>
        private static readonly Lazy<LogFactory> logFactoryInstance
            = new Lazy<LogFactory>(() => new LogFactory());

        private static Logger Logger = LogManager.GetCurrentClassLogger();

        public static LogFactory Instance
        {
            get
            {
                return logFactoryInstance.Value;
            }
        }

        public void Error(Exception ex)
        {
            Logger.Error(ex, ex.Message);
        }
    }
}
