using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace PRN211_Project_Group3.Models;

public partial class Status
{
    [Key]
    public sbyte StatusId { get; set; }

    public string? StatusName { get; set; }

}
