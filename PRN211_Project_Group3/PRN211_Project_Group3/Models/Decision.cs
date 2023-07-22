using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace PRN211_Project_Group3.Models;

public partial class Decision
{
    [Key]
    public string DecisionNo { get; set; }

    public string? DecisionName { get; set; }

    public string? Note { get; set; }

    public DateTime? CreateDate { get; set; }


}
