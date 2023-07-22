using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PRN211_Project_Group3.Models
{
    public partial class Feedback
    {
        [Key]
        public int FeedbackId { get; set; }

        public string? Content { get; set; }
        [ForeignKey("Account")]
        public string UserNameTo { get; set; } = null!;
        public string UserNameFrom { get; set; } = null!;
        public virtual Account? Account { get; set; }

        public string? Title { get; set; }

        public DateTime? CreateDate { get; set; }

    }
}
