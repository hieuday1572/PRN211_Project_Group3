﻿using PRN211_Project_Group3.Data;
using PRN211_Project_Group3.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace PRN211_Project_Group3.Controllers
{
    public class UserHomeController : Controller
    {
        private readonly AppDbContext _context;
        private readonly IHttpContextAccessor _Accessor;
        private readonly ILogger<UserHomeController> _logger;

        public UserHomeController(ILogger<UserHomeController> logger, AppDbContext context, IHttpContextAccessor accessor)
        {
            _logger = logger;
            _context = context;
            _Accessor = accessor;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Infor()
        {
            string userName = _Accessor.HttpContext.Session.GetString("Username");
            var Account = _context.Account.Include(p => p.Role).FirstOrDefault(pro => pro.UserName.Equals(userName));
            var editAccount = new EditAccount()
            {
                UserName=Account.UserName,
                Phone=Account.Phone,
                Address=Account.Address,
                Gender=Account.Gender,
                Gmail=Account.Gmail,
                Fullname=Account.Fullname,
                Birthday=Account.Birthday,
                RoleId=Account.RoleId,
                Active=Account.Active,
                Role=Account.Role,
                Url=Account.Image
            };
            return View(editAccount);
        }
        [HttpPost]
        public async Task<IActionResult> Infor(EditAccount account)
        {
            var accountChange = _context.Account.Include(p => p.Role).FirstOrDefault(pro => pro.UserName.Equals(account.UserName));
            //try
            //{
            //    await _photoService.DeletePhotoAsync(accountChange.Image);
            //}
            //catch (Exception ex)
            //{
            //    ModelState.AddModelError("", "fail");
            //    return View(account);
            //}
            //var photoresult = await _photoService.AddPhotoAsync(account.Image);
            accountChange.UserName = account.UserName;
            accountChange.Fullname = account.Fullname;
            accountChange.Address = account.Address;
            accountChange.Phone = account.Phone;
            accountChange.Gender = account.Gender;
            accountChange.Birthday = account.Birthday;
            //accountChange.Image = photoResult.Url.ToString();
            _context.Account.Update(accountChange);
            _context.SaveChanges();
            TempData["Error"] = "Change information successful !";
            return RedirectToAction("Infor");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}