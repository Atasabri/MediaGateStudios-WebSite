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
    
    public partial class Content_Details
    {
        public int ID { get; set; }
        public string Detail { get; set; }
        public int content_ID { get; set; }
    
        public virtual Content Content { get; set; }
    }
}