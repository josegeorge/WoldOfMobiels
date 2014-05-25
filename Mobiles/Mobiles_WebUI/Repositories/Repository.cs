using System.Collections.Generic;
using System.Linq;
using Mobiles_WebUI.Models;

namespace Mobiles_WebUI.Repositories
{
    public class Repository<T> : IRepository<T> where T : class
    {
        public IEnumerable<T> GetAll()
        {
            IEnumerable<T> listOfEntities;
            using(var dbContext = new MobilesDbContext())
            {
                listOfEntities = dbContext.Set<T>().ToList();
            }
            return listOfEntities;
        }

        public T Get(int id)
        {
            T entity;
            using (var dbContext = new MobilesDbContext())
            {
                entity = dbContext.Set<T>().Find(id);
            }
            return entity;

        }
    }
}