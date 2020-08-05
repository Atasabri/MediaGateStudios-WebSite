using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Media_Gate.Models;
using System.Web.Security;
using System.Net.Mail;
using System.IO;

namespace Media_Gate.Controllers
{
    public class AuthController : Controller
    {
        private DB db = new DB();

        // GET: Auth
        [Authorize]
        public ActionResult Index()
        {
            return View(db.Admins.ToList());
        }

        // GET: Auth/Details/5
        [Authorize]
        public ActionResult Details(int? id)
        {
            if (id == null||db.Admins.Single(x=>x.Name==User.Identity.Name).Type==0)
            {
                return RedirectToAction("Index");
            }
            Admin admin = db.Admins.Find(id);
            if (admin == null)
            {
                return HttpNotFound();
            }
            return View(admin);
        }

        // GET: Auth/Create
        [Authorize]
        public ActionResult Create()
        {
            if (db.Admins.Single(x => x.Name == User.Identity.Name).Type == 1)
            {
                return View();
            }
            else
            {
               return RedirectToAction("Index");
            }
        }

        // POST: Auth/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize]
        public ActionResult Create([Bind(Include = "ID,Name,Password,Type")] Admin admin)
        {
            if (ModelState.IsValid)
            {
                db.Admins.Add(admin);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(admin);
        }

        // GET: Auth/Edit/5
        [Authorize]
        public ActionResult Edit(int? id)
        {
            if (id == null|| db.Admins.Single(x => x.Name == User.Identity.Name).Type == 0)
            {
                return RedirectToAction("Index");
            }
            Admin admin = db.Admins.Find(id);
            if (admin == null)
            {
                return HttpNotFound();
            }
            return View(admin);
        }

        // POST: Auth/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize]
        public ActionResult Edit([Bind(Include = "ID,Name,Password,Type")] Admin admin)
        {
            if (ModelState.IsValid)
            {
                db.Entry(admin).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(admin);
        }

        // GET: Auth/Delete/5
        [Authorize]
        public ActionResult Delete(int? id)
        {
            if (id == null|| db.Admins.Single(x => x.Name == User.Identity.Name).Type == 0)
            {
                return RedirectToAction("Index");
            }
            Admin admin = db.Admins.Find(id);
            if (admin == null)
            {
                return HttpNotFound();
            }
            return View(admin);
        }

        // POST: Auth/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [Authorize]
        public ActionResult DeleteConfirmed(int id)
        {
            Admin admin = db.Admins.Find(id);
            db.Admins.Remove(admin);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Signin()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Signin([Bind(Include ="Name,Password")] Admin admin)
        {
            if(db.Admins.Any(x=>x.Name==admin.Name&&x.Password==admin.Password))
            {
                Admin a = db.Admins.Single(x => x.Name == admin.Name && x.Password == admin.Password);
                FormsAuthentication.SetAuthCookie(admin.Name, false);
                return RedirectToAction("Index");   
            }
            else
            {
                ViewBag.error = "Sorry , Name Or Password Is Not Right";
                return View();
            }
        }
        public ActionResult Logout()
        {
            if(User.Identity.IsAuthenticated)
            {
                FormsAuthentication.SignOut();
            }
            return RedirectToAction("Signin");
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
