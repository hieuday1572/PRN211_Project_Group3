using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace PRN211_Project_Group3.Models;

public partial class Role
{
    [Key]
    public int RoleId { get; set; }

    public string? RoleName { get; set; }

    public virtual ICollection<Account> Accounts { get; set; } = new List<Account>();
}
