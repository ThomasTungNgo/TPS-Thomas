﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using TPS.Domain;

namespace TPS.Domain.Migrations
{
    [DbContext(typeof(TPSDbContext))]
    [Migration("20191203031743_Add City Name in linking table 1")]
    partial class AddCityNameinlinkingtable1
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.0.0")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("TPS.Domain.City", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ASCII")
                        .IsRequired()
                        .HasColumnType("nvarchar(255)")
                        .HasMaxLength(255);

                    b.Property<string>("Code")
                        .IsRequired()
                        .HasColumnType("nvarchar(255)")
                        .HasMaxLength(255);

                    b.Property<string>("Country")
                        .IsRequired()
                        .HasColumnType("nvarchar(255)")
                        .HasMaxLength(255);

                    b.Property<float>("Latitude")
                        .HasColumnType("real");

                    b.Property<float>("Longitude")
                        .HasColumnType("real");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(255)")
                        .HasMaxLength(255);

                    b.HasKey("Id");

                    b.ToTable("Cities");
                });

            modelBuilder.Entity("TPS.Domain.CityAttraction", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("CityId")
                        .HasColumnType("int");

                    b.Property<string>("CityName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("CityId");

                    b.ToTable("CityAttractions");
                });

            modelBuilder.Entity("TPS.Domain.CustomerTravelPackage", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("CustomerId")
                        .HasColumnType("int");

                    b.Property<string>("Feedback")
                        .HasColumnType("nvarchar(max)");

                    b.Property<decimal>("SalePrice")
                        .HasColumnType("decimal(18,2)");

                    b.Property<DateTime>("StartDate")
                        .HasColumnType("datetime2");

                    b.Property<int>("TravelPackageId")
                        .HasColumnType("int");

                    b.Property<int>("VoucherId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("CustomerId");

                    b.HasIndex("TravelPackageId");

                    b.HasIndex("VoucherId");

                    b.ToTable("CustomerTravelPackages");
                });

            modelBuilder.Entity("TPS.Domain.Payment", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<decimal>("Amount")
                        .HasColumnType("decimal(18,2)");

                    b.Property<int>("CustomerTravelPackageId")
                        .HasColumnType("int");

                    b.Property<DateTime>("DateTime")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValueSql("getdate()");

                    b.Property<string>("PaymentType")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("CustomerTravelPackageId");

                    b.ToTable("Payments");

                    b.HasDiscriminator<string>("PaymentType").HasValue("Payment");
                });

            modelBuilder.Entity("TPS.Domain.Person", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Forename")
                        .IsRequired()
                        .HasColumnType("nvarchar(255)")
                        .HasMaxLength(255);

                    b.Property<string>("PersonType")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Surname")
                        .IsRequired()
                        .HasColumnType("nvarchar(255)")
                        .HasMaxLength(255);

                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("People");

                    b.HasDiscriminator<string>("PersonType").HasValue("Person");
                });

            modelBuilder.Entity("TPS.Domain.TravelPackage", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Comment")
                        .HasColumnType("nvarchar(10)")
                        .HasMaxLength(10);

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("DurationDay")
                        .HasColumnType("int");

                    b.Property<int>("DurationNight")
                        .HasColumnType("int");

                    b.Property<int>("IntensityId")
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(255)")
                        .HasMaxLength(255);

                    b.Property<decimal>("RRP")
                        .HasColumnType("decimal(18,2)");

                    b.Property<int>("Rating")
                        .HasColumnType("int");

                    b.Property<int>("StatusId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasDefaultValueSql("1");

                    b.HasKey("Id");

                    b.ToTable("TravelPackages");
                });

            modelBuilder.Entity("TPS.Domain.TravelPackageCity", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("CityId")
                        .HasColumnType("int");

                    b.Property<string>("CityName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("NumberOfDays")
                        .HasColumnType("int");

                    b.Property<int>("TravelPackageId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("CityId");

                    b.HasIndex("TravelPackageId");

                    b.ToTable("TravelPackageCities");
                });

            modelBuilder.Entity("TPS.Domain.TravelPackageCityAttraction", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("CityAttractionId")
                        .HasColumnType("int");

                    b.Property<int>("TravelPackageCityId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("CityAttractionId");

                    b.HasIndex("TravelPackageCityId");

                    b.ToTable("TravelPackageCityAttractions");
                });

            modelBuilder.Entity("TPS.Domain.TravelProvider", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("TravelProviders");
                });

            modelBuilder.Entity("TPS.Domain.Voucher", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("CustomerId")
                        .HasColumnType("int");

                    b.Property<string>("Description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("DiscountPercentage")
                        .HasColumnType("int");

                    b.Property<DateTime>("Expires")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValueSql("DATEADD(month, 3, GETDATE())");

                    b.Property<bool>("Valid")
                        .HasColumnType("bit");

                    b.HasKey("Id");

                    b.HasIndex("CustomerId");

                    b.ToTable("Vouchers");
                });

            modelBuilder.Entity("TPS.Domain.BitcoinPayment", b =>
                {
                    b.HasBaseType("TPS.Domain.Payment");

                    b.Property<string>("TransactionHashcode")
                        .HasColumnType("nvarchar(max)");

                    b.HasDiscriminator().HasValue("Bitcoin");
                });

            modelBuilder.Entity("TPS.Domain.CreditCardPayment", b =>
                {
                    b.HasBaseType("TPS.Domain.Payment");

                    b.Property<string>("RecordOfCharge")
                        .HasColumnType("nvarchar(max)");

                    b.HasDiscriminator().HasValue("CreditCard");
                });

            modelBuilder.Entity("TPS.Domain.PayPalPayment", b =>
                {
                    b.HasBaseType("TPS.Domain.Payment");

                    b.Property<string>("RecordOfCharge")
                        .HasColumnName("PayPalPayment_RecordOfCharge")
                        .HasColumnType("nvarchar(max)");

                    b.HasDiscriminator().HasValue("PayPal");
                });

            modelBuilder.Entity("TPS.Domain.Customer", b =>
                {
                    b.HasBaseType("TPS.Domain.Person");

                    b.HasDiscriminator().HasValue("Customer");
                });

            modelBuilder.Entity("TPS.Domain.Employee", b =>
                {
                    b.HasBaseType("TPS.Domain.Person");

                    b.Property<int>("TravelProviderId")
                        .HasColumnType("int");

                    b.HasIndex("TravelProviderId");

                    b.HasDiscriminator().HasValue("Employee");
                });

            modelBuilder.Entity("TPS.Domain.CityAttraction", b =>
                {
                    b.HasOne("TPS.Domain.City", "City")
                        .WithMany("Attractions")
                        .HasForeignKey("CityId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("TPS.Domain.CustomerTravelPackage", b =>
                {
                    b.HasOne("TPS.Domain.Customer", "Customer")
                        .WithMany("TravelPackages")
                        .HasForeignKey("CustomerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("TPS.Domain.TravelPackage", "TravelPackage")
                        .WithMany()
                        .HasForeignKey("TravelPackageId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("TPS.Domain.Voucher", "Voucher")
                        .WithMany()
                        .HasForeignKey("VoucherId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("TPS.Domain.Payment", b =>
                {
                    b.HasOne("TPS.Domain.CustomerTravelPackage", "CustomerTravelPackage")
                        .WithMany("Payments")
                        .HasForeignKey("CustomerTravelPackageId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("TPS.Domain.TravelPackageCity", b =>
                {
                    b.HasOne("TPS.Domain.City", "City")
                        .WithMany()
                        .HasForeignKey("CityId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("TPS.Domain.TravelPackage", "TravelPackage")
                        .WithMany("Cities")
                        .HasForeignKey("TravelPackageId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("TPS.Domain.TravelPackageCityAttraction", b =>
                {
                    b.HasOne("TPS.Domain.CityAttraction", "CityAttraction")
                        .WithMany("TravelPackageCityAttractions")
                        .HasForeignKey("CityAttractionId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("TPS.Domain.TravelPackageCity", "TravelPackageCity")
                        .WithMany("TravelPackageCityAttractions")
                        .HasForeignKey("TravelPackageCityId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("TPS.Domain.Voucher", b =>
                {
                    b.HasOne("TPS.Domain.Customer", "Customer")
                        .WithMany("Vouchers")
                        .HasForeignKey("CustomerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("TPS.Domain.Employee", b =>
                {
                    b.HasOne("TPS.Domain.TravelProvider", "TravelProvider")
                        .WithMany()
                        .HasForeignKey("TravelProviderId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
#pragma warning restore 612, 618
        }
    }
}
