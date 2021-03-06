//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Career
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Career()
        {
            this.Applicants = new HashSet<Applicant>();
            this.Career_Requirment = new HashSet<Career_Requirment>();
            this.Career_Skill = new HashSet<Career_Skill>();
        }
    
        public int ID { get; set; }
        [Display(Name ="Career Name")]
        [Required(ErrorMessage ="Please Enter Career Name")]
        public string Name { get; set; }
        [Display(Name = "Career Experience")]
        [Required(ErrorMessage = "Please Enter Career Experience")]
        public string Experience { get; set; }
        [Display(Name = "Career Type")]
        [Required(ErrorMessage = "Please Enter Career Type (Like => Full Time , Part Time)")]
        public string Type { get; set; }
        [Display(Name = "Career Salary")]
        [Required(ErrorMessage = "Please Enter Career Salary")]
        public double Salary { get; set; }
        [Display(Name = "Career Description")]
        [Required(ErrorMessage = "Please Enter Career Description")]
        public string Description { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Applicant> Applicants { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Career_Requirment> Career_Requirment { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Career_Skill> Career_Skill { get; set; }
    }
}
