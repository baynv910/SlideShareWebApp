﻿using System;
using System.Collections.Generic;
using System.Text;
using LTCSDL.Common.Rsp;
using LTCSDL.Common.BLL;

namespace FreeDoc.BLL
{
    using DAL;
    using DAL.Models;
    public class CategoriesSvc : GenericSvc<CategoriesRep, Categories>
    {
        public override SingleRsp Read(int id)
        {
            var res = new SingleRsp();
            var m = _rep.Read(id);
            res.Data = m;

            return res;
        }

        public override SingleRsp Update(Categories m)
        {
            var res = new SingleRsp();
            var m1 = m.CategoryID > 0 ? _rep.Read(m.CategoryID) : _rep.Read(m.CategoryName);
            if (m1 == null)
            {
                res.SetError("EZ103", "No data.");
            }
            else
            {
                res = base.Update(m);
                res.Data = m;
            }
            return res;
        }

    }
}
