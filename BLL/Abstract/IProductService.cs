using DAL.Entity;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;

namespace BLL.Abstract
{
    public interface IProductService
    {
     
        List<Product> GetActive();

       
        List<Product> GetDefault(Expression<Func<Product, bool>> exp);
       
        void Add(Product Product);
      
        void Update(Product Product);
        
        void Remove(Guid id);
        
        Product GetById(Guid id);

        
        void RemoveAll(Expression<Func<Product, bool>> exp);

        bool Any(Expression<Func<Product, bool>> exp);
    }
}
