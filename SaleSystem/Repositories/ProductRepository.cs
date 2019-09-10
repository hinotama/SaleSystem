using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using SaleSystemAPI.Repositories.Interfaces;
using SaleSystemData.Models;

namespace SaleSystemAPI.Repositories
{
    public class ProductRepository : IProductRepository
    {
        private readonly SaleSystemDBContext _context;

        public ProductRepository(SaleSystemDBContext context)
        {
            _context = context;
        }
        
        public async Task<int> AddProduct(Product product)
        {
            int result = 0;
            if (_context != null)
            {
                // Add that Product.
                await _context.Product.AddAsync(product);

                // Commit the transaction.
                await _context.SaveChangesAsync();

                result = product.ProductId;
            }
            return result;
        }

        public async Task<int> EditProduct(Product product)
        {
            int result = 0;
            if (_context != null)
            {
                // Edit that Product.
                _context.Product.Update(product);

                // Commit the transaction.
                result = await _context.SaveChangesAsync();
            }
            return result;
        }

        public async Task<int> DeleteProduct(int? productId)
        {
            int result = 0;
            if (_context != null)
            {
                // Find the Product for specific productId.
                var product = await _context.Product.FirstOrDefaultAsync(x => x.ProductId == productId);

                if (product != null)
                {
                    // Delete that Product.
                    _context.Product.Remove(product);

                    // Commit the transaction.
                    result = await _context.SaveChangesAsync();
                }
            }
            return result;
        }

        public async Task<Product> GetProduct(int? productId)
        {
            if (_context != null)
            {
                // Select a Product from Product table in the db by productId.
                return await (from p in _context.Product
                              where p.ProductId == productId
                              select new Product
                              {
                                  ProductId = p.ProductId,
                                  ProductName = p.ProductName,
                                  Description = p.Description,
                                  Price = p.Price,
                                  Unit = p.Unit
                              }).FirstOrDefaultAsync();
            }
            return null;
        }

        public async Task<List<Product>> ListProduct()
        {
            if (_context != null)
            {
                // Select all Products from Product table in the db.
                return await (from p in _context.Product
                              select new Product
                              {
                                  ProductId = p.ProductId,
                                  ProductName = p.ProductName,
                                  Description = p.Description,
                                  Price = p.Price,
                                  Unit = p.Unit
                              }).ToListAsync();
            }
            return null;
        }
    }
}
