using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace SaleSystemData.Models
{
    public partial class SaleSystemDBContext : DbContext
    {
        public SaleSystemDBContext()
        {
        }

        public SaleSystemDBContext(DbContextOptions<SaleSystemDBContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Auth> Auth { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<User> User { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=localhost;Database=SaleSystemDB;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("ProductVersion", "2.2.6-servicing-10079");

            modelBuilder.Entity<Auth>(entity =>
            {
                entity.Property(e => e.AuthId).HasColumnName("authId");

                entity.Property(e => e.Expiration)
                    .HasColumnName("expiration")
                    .HasColumnType("datetime");

                entity.Property(e => e.Token).HasColumnName("token");

                entity.Property(e => e.UserId).HasColumnName("userId");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.Auth)
                    .HasForeignKey(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Auth_User");
            });

            modelBuilder.Entity<Order>(entity =>
            {
                entity.Property(e => e.OrderId).HasColumnName("orderId");

                entity.Property(e => e.ProductId).HasColumnName("productId");

                entity.Property(e => e.Quantity).HasColumnName("quantity");

                entity.Property(e => e.UserId).HasColumnName("userId");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.Order)
                    .HasForeignKey(d => d.ProductId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Order_Product");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.Order)
                    .HasForeignKey(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Order_User");
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.Property(e => e.ProductId).HasColumnName("productId");

                entity.Property(e => e.Description).HasColumnName("description");

                entity.Property(e => e.Price).HasColumnName("price");

                entity.Property(e => e.ProductName)
                    .HasColumnName("productName")
                    .HasMaxLength(256);

                entity.Property(e => e.Unit)
                    .HasColumnName("unit")
                    .HasMaxLength(256);
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.Property(e => e.UserId).HasColumnName("userId");

                entity.Property(e => e.Password).HasColumnName("password");

                entity.Property(e => e.Username)
                    .HasColumnName("username")
                    .HasMaxLength(256);
            });
        }
    }
}
