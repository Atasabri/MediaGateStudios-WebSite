using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Media_Gate.Models;
using System.IO;

namespace Media_Gate.Controllers
{
    [Authorize]
    public class CareersController : Controller
    {
        private DB db = new DB();

        // GET: Careers
        public ActionResult Index()
        {

            return View(db.Careers.ToList());
        }

        // GET: Careers/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Career career = db.Careers.Find(id);
            if (career == null)
            {
                return HttpNotFound();
            }
            return View(career);
        }

        // GET: Careers/Create
        public ActionResult Create()
        {
            Session.Remove("requirment");
            Session.Remove("skill");
            return View();
        }

        // POST: Careers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name,Experience,Type,Salary,Description")] Career career)
        {
            if (ModelState.IsValid)
            {
                db.Careers.Add(career);
                List<Requirment> requirment = Session["requirment"] as List<Requirment>;
                foreach (Requirment item in requirment)
                {
                    db.Career_Requirment.Add(new Career_Requirment { Career_ID = career.ID, Reqirment_ID = item.ID });
                }
                List<Skill> skill = Session["skill"] as List<Skill>;
                foreach (Skill item in skill)
                {
                    db.Career_Skill.Add(new Career_Skill { Career_ID = career.ID, Skill_ID = item.ID });
                }
                Session.Remove("requirment");
                Session.Remove("skill");
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(career);
        }

        // GET: Careers/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Career career = db.Careers.Find(id);
            if (career == null)
            {
                return HttpNotFound();
            }
            Session.Remove("requirment");
            Session.Remove("skill");
            return View(career);
        }

        // POST: Careers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name,Experience,Type,Salary,Description")] Career career)
        {
            if (ModelState.IsValid)
            {
                db.Entry(career).State = EntityState.Modified;
                List<Requirment> requirment = Session["requirment"] as List<Requirment>;
                foreach (Requirment item in requirment)
                {
                    db.Career_Requirment.Add(new Career_Requirment { Career_ID = career.ID, Reqirment_ID = item.ID });
                }
                List<Skill> skill = Session["skill"] as List<Skill>;
                foreach (Skill item in skill)
                {
                    db.Career_Skill.Add(new Career_Skill { Career_ID = career.ID, Skill_ID = item.ID });
                }
                Session.Remove("requirment");
                Session.Remove("skill");
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(career);
        }

        // GET: Careers/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Career career = db.Careers.Find(id);
            if (career == null)
            {
                return HttpNotFound();
            }
            return View(career);
        }

        // POST: Careers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Career career = db.Careers.Find(id);
            foreach (var item in career.Applicants)
            {
                FileInfo f = new FileInfo(Server.MapPath("~/Uploads/Aplicants/" + item.ID + ".pdf"));
                f.Delete();
            }
            db.Careers.Remove(career);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult Addrequirment(int reqID)
        {
            Requirment R = db.Requirments.Find(reqID);
            if(Session["requirment"]==null)
            {
                List<Requirment> List = new List<Requirment>();
                List.Add(R);
                Session["requirment"] = List;
            }
            else
            {
                List<Requirment> T = Session["requirment"] as List<Requirment>;
                T.Add(R);
                Session["requirment"] = T;
            }
            return PartialView("_requirment");
        }

        [HttpPost]
        public ActionResult Addskill(int skillID)
        {
            Skill R = db.Skills.Find(skillID);
            if (Session["skill"] == null)
            {
                List<Skill> List = new List<Skill>();
                List.Add(R);
                Session["skill"] = List;
            }
            else
            {
                List<Skill> T = Session["skill"] as List<Skill>;
                T.Add(R);
                Session["skill"] = T;
            }
            return PartialView("_skill");
        }


        public ActionResult DeleteREQ(int id,int l)
        {
            db.Career_Requirment.Remove(db.Career_Requirment.Single(x=>x.ID==id));
            db.SaveChanges();
            return RedirectToAction("Edit", new { @id = l });
        }
        public ActionResult Deleteskill(int id, int l)
        {
            db.Career_Skill.Remove(db.Career_Skill.Single(x=>x.ID==id));
            db.SaveChanges();
            return RedirectToAction("Edit", new { @id = l });
        }

        public ActionResult Download(int id)
        {
            string path = Server.MapPath("~/Uploads/Aplicants/" + id + ".pdf");
            return File(path, "Application/pdf", db.Applicants.Find(id).Name + ".pdf"); 
        }
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
