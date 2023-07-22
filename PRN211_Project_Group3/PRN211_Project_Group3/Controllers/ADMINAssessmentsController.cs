﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using PRN211_Project_Group3.Data;
using PRN211_Project_Group3.Models;

namespace PRN211_Project_Group3.Controllers
{
    public class ADMINAssessmentsController : Controller
    {
        private readonly AppDbContext _context;

        public ADMINAssessmentsController(AppDbContext context)
        {
            _context = context;
        }

        // GET: Assessments
        public async Task<IActionResult> Index()
        {
            var appDbContext = _context.Assessment.Include(a => a.Syllabus);
            return View(await appDbContext.ToListAsync());
        }

        // GET: Assessments/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Assessment == null)
            {
                return NotFound();
            }

            var assessment = await _context.Assessment
                .Include(a => a.Syllabus)
                .FirstOrDefaultAsync(m => m.AssessmentId == id);
            if (assessment == null)
            {
                return NotFound();
            }

            return View(assessment);
        }

        // GET: Assessments/Create
        public IActionResult Create()
        {
            ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId");
            return View();
        }

        // POST: Assessments/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Category,Type,Part,Weight,CompletionCriteria,Duration,Clo,QuestionType,NoQuestion,KnowledgeSkill,GradingGuide,Note,SyllabusId")] Assessment assessment)
        {
            if (ModelState.IsValid)
            {
                if (string.IsNullOrEmpty(assessment.Category))
                {
                    ModelState.AddModelError("Category", "The Category field is required.");
                    ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
                    return View(assessment);
                }
                if (string.IsNullOrEmpty(assessment.Type))
                {
                    ModelState.AddModelError("Type", "The Type field is required.");
                    ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
                    return View(assessment);
                }

                if (assessment.Part < 0)
                {
                    ModelState.AddModelError("Part", "The Part field must be a non-negative number.");
                    ViewBag.Sub = _context.Subject.ToList();
                    ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
                    return View(assessment);
                }
                if (string.IsNullOrEmpty(assessment.Weight))
                {
                    ModelState.AddModelError("Weight", "The Weight field is required.");
                    ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
                    return View(assessment);
                }
                if (string.IsNullOrEmpty(assessment.CompletionCriteria))
                {
                    ModelState.AddModelError("CompletionCriteria", "The CompletionCriteria field is required.");
                    ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
                    return View(assessment);
                }
                if (string.IsNullOrEmpty(assessment.Duration))
                {
                    ModelState.AddModelError("Duration", "The Duration field is required.");
                    ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
                    return View(assessment);
                }
                if (string.IsNullOrEmpty(assessment.Clo))
                {
                    ModelState.AddModelError("Clo", "The Clo field is required.");
                    ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
                    return View(assessment);
                }

                // Generate new AssessmentId
                //var maxAssessmentId = _context.Assessment.Max(a => a.AssessmentId);
                //assessment.AssessmentId = maxAssessmentId + 1;

                _context.Add(assessment);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
            return View(assessment);
        }


        // GET: Assessments/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Assessment == null)
            {
                return NotFound();
            }

            var assessment = await _context.Assessment.FindAsync(id);
            if (assessment == null)
            {
                return NotFound();
            }
            ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
            return View(assessment);
        }

        // POST: Assessments/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("AssessmentId,Category,Type,Part,Weight,CompletionCriteria,Duration,Clo,QuestionType,NoQuestion,KnowledgeSkill,GradingGuide,Note,SyllabusId")] Assessment assessment)
        {
            if (id != assessment.AssessmentId)
            {
                return NotFound();
            }
            if (string.IsNullOrEmpty(assessment.Category))
            {
                ModelState.AddModelError("Category", "The Category field is required.");
                ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
                return View(assessment);
            }
            if (string.IsNullOrEmpty(assessment.Type))
            {
                ModelState.AddModelError("Type", "The Type field is required.");
                ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
                return View(assessment);
            }
            if (assessment.Part < 0)
                {
                ModelState.AddModelError("Part", "The Part field must be a non-negative number.");
                ViewBag.Sub = _context.Subject.ToList();
                ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
                return View(assessment);
            }
            if (string.IsNullOrEmpty(assessment.Weight))
            {
                ModelState.AddModelError("Weight", "The Weight field is required.");
                ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
                return View(assessment);
            }
            if (string.IsNullOrEmpty(assessment.CompletionCriteria))
            {
                ModelState.AddModelError("CompletionCriteria", "The CompletionCriteria field is required.");
                ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
                return View(assessment);
            }
            if (string.IsNullOrEmpty(assessment.Duration))
            {
                ModelState.AddModelError("Duration", "The Duration field is required.");
                ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
                return View(assessment);
            }
            if (string.IsNullOrEmpty(assessment.Clo))
            {
                ModelState.AddModelError("Clo", "The Clo field is required.");
                ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
                return View(assessment);
            }
            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(assessment);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!AssessmentExists(assessment.AssessmentId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["SyllabusId"] = new SelectList(_context.Syllabus, "SyllabusId", "SyllabusId", assessment.SyllabusId);
            return View(assessment);
        }

        // GET: Assessments/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Assessment == null)
            {
                return NotFound();
            }

            var assessment = await _context.Assessment
                .Include(a => a.Syllabus)
                .FirstOrDefaultAsync(m => m.AssessmentId == id);
            if (assessment == null)
            {
                return NotFound();
            }

            return View(assessment);
        }

        // POST: Assessments/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Assessment == null)
            {
                return Problem("Entity set 'AppDbContext.Assessment'  is null.");
            }
            var assessment = await _context.Assessment.FindAsync(id);
            if (assessment != null)
            {
                _context.Assessment.Remove(assessment);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool AssessmentExists(int id)
        {
          return (_context.Assessment?.Any(e => e.AssessmentId == id)).GetValueOrDefault();
        }
    }
}
