﻿using PRN211_Project_Group3.Data;
using PRN211_Project_Group3.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace PRN211_Project_Group3.Controllers
{
    public class UserCurriculumController : Controller
    {
        private readonly AppDbContext _context;
        private readonly IHttpContextAccessor _Accessor;
        public UserCurriculumController(AppDbContext context, IHttpContextAccessor accessor)
        {
            _context = context;
            _Accessor = accessor;
        }
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Index(string option, string search)
        {
            //HttpContext.Session.SetString("option", option);
            //HttpContext.Session.SetString("search", search);
            List<Curriculum> curriculum;
            if(search!=null)
            {
                if (option.Equals("code"))
                {
                    curriculum = _context.Curriculum.Include(p => p.Decision).Where(p => p.CurriculumCode.Contains(search.Trim())).ToList();
                }
                else
                {
                    curriculum = _context.Curriculum.Include(p => p.Decision).Where(p => (p.NameEn.Contains(search) || p.NameVn.Equals(search.Trim()))).ToList();
                }
                if (curriculum.Count() == 0)
                {
                    TempData["error"] = "Sorry: Curriculum not found !";
                }
                return View(curriculum);
            }
            TempData["error"] = "Sorry: Curriculum not found !";
            return View();
        }

        public IActionResult Detail(int id)
        {
            Curriculum curri = _context.Curriculum.Include(p => p.Decision).FirstOrDefault(p=>p.CurriculumId==id);
            var curri_sub = _context.Curriculum_Subject.Include(p => p.Subject).Where(pro => pro.CurriculumId == id).ToList();
            ViewBag.Curri_sub = curri_sub;
            if (curri == null)
            {
                return NotFound();
            }
            return View(curri);
        }

    }
}
