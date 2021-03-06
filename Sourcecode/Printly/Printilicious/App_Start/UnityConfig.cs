﻿using Printly.Business.BDC;
using Printly.DataAccess.DAC;
using Printly.Shared.Core;
using Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Printilicious.App_Start
{
    public class UnityConfig
    {

        public static void RegisterObjects()
        {
            DependencyFactory.Container.RegisterType<ProductDAC, ProductDAC>();
            DependencyFactory.Container.RegisterType<ProductBDC, ProductBDC>();

            DependencyFactory.Container.RegisterType<UserDAC, UserDAC>();
            DependencyFactory.Container.RegisterType<UserBDC, UserBDC>();

            DependencyFactory.Container.RegisterType<CartDAC, CartDAC>();
            DependencyFactory.Container.RegisterType<CartBDC, CartBDC>();
        }

    }
}