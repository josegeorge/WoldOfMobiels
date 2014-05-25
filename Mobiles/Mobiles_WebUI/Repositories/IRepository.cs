using System;
using System.Collections.Generic;
using System.Text;

namespace Mobiles_WebUI.Repositories
{
    public interface IRepository<T>
    {
        IEnumerable<T> GetAll();
        T Get(int id);
    }
}
