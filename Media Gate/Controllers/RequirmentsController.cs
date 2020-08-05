using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Media_Gate.Models;

namespace Media_Gate.Controllers
{
    [Authorize]
    public class RequirmentsController : Controller
    {
        private DB db = new DB();

        // GET: Requirments
        public ActionResult Index()
        {
            return View(db.Requirments.ToList());
        }

        // GET: Requirments/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Requirment requirment = db.Requirments.Find(id);
            if (requirment == null)
            {
                return HttpNotFound();
            }
            return View(requirment);
        }

        // GET: Requirments/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Requirments/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name")] Requirment requirment)
        {
            if (ModelState.IsValid)
            {
                db.Requirments.Add(requirment);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(requirment);
        }

        // GET: Requirments/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Requirment requirment = db.Requirments.Find(id);
            if (requirment == null)
            {
                return HttpNotFound();
            }
            return View(requirment);
        }

        // POST: Requirments/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name")] Requirment requirment)
        {
            if (ModelState.IsValid)
            {
                db.Entry(requirment).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(requirment);
        }

        // GET: Requirments/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Requirment requirment = db.Requirments.Find(id);
            if (requirment == null)
            {
                return HttpNotFound();
            }
            return View(requirment);
        }

        // POST: Requirments/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Requirment requirment = db.Requirments.Find(id);
            db.Requirments.Remove(requirment);
            db.SaveChanges();
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
