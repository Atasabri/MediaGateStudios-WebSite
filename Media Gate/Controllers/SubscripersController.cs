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
    public class SubscripersController : Controller
    {
        private DB db = new DB();

        // GET: Subscripers
        public ActionResult Index()
        {
            return View(db.Subscripers.ToList());
        }

        // GET: Subscripers/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Subscriper subscriper = db.Subscripers.Find(id);
            if (subscriper == null)
            {
                return HttpNotFound();
            }
            return View(subscriper);
        }

        // GET: Subscripers/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Subscripers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Email")] Subscriper subscriper)
        {
            if (ModelState.IsValid)
            {
                db.Subscripers.Add(subscriper);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(subscriper);
        }

        // GET: Subscripers/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Subscriper subscriper = db.Subscripers.Find(id);
            if (subscriper == null)
            {
                return HttpNotFound();
            }
            return View(subscriper);
        }

        // POST: Subscripers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Email")] Subscriper subscriper)
        {
            if (ModelState.IsValid)
            {
                db.Entry(subscriper).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(subscriper);
        }

        // GET: Subscripers/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Subscriper subscriper = db.Subscripers.Find(id);
            if (subscriper == null)
            {
                return HttpNotFound();
            }
            return View(subscriper);
        }

        // POST: Subscripers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Subscriper subscriper = db.Subscripers.Find(id);
            db.Subscripers.Remove(subscriper);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult SendMail(string Subject, HttpPostedFileBase file, List<string> c)
        {
            if (c != null && c.Count() >= 1 && file != null)
            {
                List<string> Users = c.Distinct().ToList();
                DEL.Send_Mail(Subject, file, Users);         
             }
            
            return RedirectToAction("Index");
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
