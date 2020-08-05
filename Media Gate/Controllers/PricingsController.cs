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
    public class PricingsController : Controller
    {
        private DB db = new DB();

        // GET: Pricings
        public ActionResult Index()
        {
            return View(db.Pricings.ToList());
        }

        // GET: Pricings/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Pricing pricing = db.Pricings.Find(id);
            if (pricing == null)
            {
                return HttpNotFound();
            }
            return View(pricing);
        }

        // GET: Pricings/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Pricings/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name")] Pricing pricing,HttpPostedFileBase file)
        {
            if (ModelState.IsValid&&file!=null)
            {
                db.Pricings.Add(pricing);
                db.SaveChanges();
                file.SaveAs(Server.MapPath("~/Uploads/pricing/" + pricing.ID + ".jpg"));
                return RedirectToAction("Index");
            }

            return View(pricing);
        }

        // GET: Pricings/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Pricing pricing = db.Pricings.Find(id);
            if (pricing == null)
            {
                return HttpNotFound();
            }
            return View(pricing);
        }

        // POST: Pricings/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name")] Pricing pricing,HttpPostedFileBase file)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pricing).State = EntityState.Modified;
                db.SaveChanges();
                if(file!=null)
                {
                    file.SaveAs(Server.MapPath("~/Uploads/pricing/" + pricing.ID + ".jpg"));
                }
                return RedirectToAction("Index");
            }
            return View(pricing);
        }

        // GET: Pricings/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Pricing pricing = db.Pricings.Find(id);
            if (pricing == null)
            {
                return HttpNotFound();
            }
            return View(pricing);
        }

        // POST: Pricings/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Pricing pricing = db.Pricings.Find(id);
            db.Pricings.Remove(pricing);
            db.SaveChanges();
            FileInfo f = new FileInfo(Server.MapPath("~/Uploads/pricing/" + id + ".jpg"));
            f.Delete();
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
