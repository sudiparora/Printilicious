using Printly.Shared.Ioc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Practices.Unity;
using Unity;
using Printly.DataAccess.DAC;
using Printly.Business.BDC;

namespace Printly.App_Start
{
    public class UnityConfig
    {
        public static void RegisterObjects()
        {
            DependencyFactory.Container.RegisterType<ProductDAC, ProductDAC>();
            DependencyFactory.Container.RegisterType<ProductBDC, ProductBDC>();
        }
    }
}