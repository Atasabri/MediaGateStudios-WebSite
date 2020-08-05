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
    public class video_typeController : Controller
    {
        private DB db = new DB();

        // GET: video_type
        public ActionResult Index()
        {
            return View(db.video_type.ToList());
        }

        // GET: video_type/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            video_type video_type = db.video_type.Find(id);
            if (video_type == null)
            {
                return HttpNotFound();
            }
            return View(video_type);
        }

        // GET: video_type/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: video_type/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name")] video_type video_type)
        {
            if (ModelState.IsValid)
            {
                db.video_type.Add(video_type);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(video_type);
        }

        // GET: video_type/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            video_type video_type = db.video_type.Find(id);
            if (video_type == null)
            {
                return HttpNotFound();
            }
            return View(video_type);
        }

        // POST: video_type/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name")] video_type video_type)
        {
            if (ModelState.IsValid)
            {
                db.Entry(video_type).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(video_type);
        }

        // GET: video_type/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            video_type video_type = db.video_type.Find(id);
            if (video_type == null)
            {
                return HttpNotFound();
            }
            return View(video_type);
        }

        // POST: video_type/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            video_type video_type = db.video_type.Find(id);
            db.video_type.Remove(video_type);
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
