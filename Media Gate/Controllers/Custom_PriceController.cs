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
    public class Custom_PriceController : Controller
    {
        private DB db = new DB();

        // GET: Custom_Price
        public ActionResult Index()
        {
            var custom_Price = db.Custom_Price.Include(c => c.User);
            return View(custom_Price.ToList());
        }

        // GET: Custom_Price/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Custom_Price custom_Price = db.Custom_Price.Find(id);
            if (custom_Price == null)
            {
                return HttpNotFound();
            }
            return View(custom_Price);
        }

        // GET: Custom_Price/Create
        public ActionResult Create()
        {
            Session.Remove("VideoType");
            ViewBag.UsersID = new SelectList(db.Users, "ID", "UserName");
            return View();
        }

        // POST: Custom_Price/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,DateOfDeadLine,Message,Contact,Other,UsersID")] Custom_Price custom_Price)
        {
            if (ModelState.IsValid)
            {
                db.Custom_Price.Add(custom_Price);
                List<video_type> list = Session["VideoType"] as List<video_type>;
                foreach (video_type item in list)
                {
                    db.custom_videos.Add(new custom_videos {  CustomOrder_Id=custom_Price.ID, Video_TypeID = item.ID });
                }
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.UsersID = new SelectList(db.Users, "ID", "UserName", custom_Price.UsersID);
            return View(custom_Price);
        }

        // GET: Custom_Price/Edit/5
        public ActionResult Edit(int? id)
        {
            Session.Remove("VideoType");
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Custom_Price custom_Price = db.Custom_Price.Find(id);
            if (custom_Price == null)
            {
                return HttpNotFound();
            }
            ViewBag.UsersID = new SelectList(db.Users, "ID", "UserName", custom_Price.UsersID);
            return View(custom_Price);
        }

        // POST: Custom_Price/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,DateOfDeadLine,Message,Contact,Other,UsersID")] Custom_Price custom_Price)
        {
            if (ModelState.IsValid)
            {
                db.Entry(custom_Price).State = EntityState.Modified;
                List<video_type> list = Session["VideoType"] as List<video_type>;
                foreach(video_type item in list)
                {
                    db.custom_videos.Add(new custom_videos { CustomOrder_Id = custom_Price.ID, Video_TypeID = item.ID });
                }
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.UsersID = new SelectList(db.Users, "ID", "UserName", custom_Price.UsersID);
            return View(custom_Price);
        }

        // GET: Custom_Price/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Custom_Price custom_Price = db.Custom_Price.Find(id);
            if (custom_Price == null)
            {
                return HttpNotFound();
            }
            return View(custom_Price);
        }

        // POST: Custom_Price/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Custom_Price custom_Price = db.Custom_Price.Find(id);
            db.Custom_Price.Remove(custom_Price);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult AddVideoCustom(int id)
        {
            if(Session["VideoType"]==null)
            {
                List<video_type> list = new List<video_type>();
                list.Add(db.video_type.Single(x => x.ID == id));
                Session["VideoType"] = list;
            }
            else
            {
                List<video_type> list = Session["VideoType"] as List<video_type>;
                list.Add(db.video_type.Single(x => x.ID == id));
                Session["VideoType"] = list;
            }
            return PartialView("_VideoType");
        }

        public ActionResult DeleteVideo(int id, int Cusid)
        {
            db.custom_videos.Remove(db.custom_videos.Single(x => x.ID == id));
            db.SaveChanges();
            return RedirectToAction("Edit", new { @id = Cusid });
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
