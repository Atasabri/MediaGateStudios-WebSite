﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Media_Gate.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DB : DbContext
    {
        public DB()
            : base("name=DB")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Admin> Admins { get; set; }
        public virtual DbSet<Applicant> Applicants { get; set; }
        public virtual DbSet<Career_Requirment> Career_Requirment { get; set; }
        public virtual DbSet<Career_Skill> Career_Skill { get; set; }
        public virtual DbSet<Career> Careers { get; set; }
        public virtual DbSet<Contact> Contacts { get; set; }
        public virtual DbSet<Custom_Price> Custom_Price { get; set; }
        public virtual DbSet<custom_videos> custom_videos { get; set; }
        public virtual DbSet<Price_Orders> Price_Orders { get; set; }
        public virtual DbSet<Pricing> Pricings { get; set; }
        public virtual DbSet<Protoflio> Protoflios { get; set; }
        public virtual DbSet<Requirment> Requirments { get; set; }
        public virtual DbSet<Service_Details> Service_Details { get; set; }
        public virtual DbSet<Service> Services { get; set; }
        public virtual DbSet<Skill> Skills { get; set; }
        public virtual DbSet<Subscriper> Subscripers { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Team> Teams { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<video_type> video_type { get; set; }
        public virtual DbSet<Content> Contents { get; set; }
        public virtual DbSet<Content_Details> Content_Details { get; set; }
    }
}
