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
    public class Price_OrdersController : Controller
    {
        private DB db = new DB();

        // GET: Price_Orders
        public ActionResult Index()
        {
            var price_Orders = db.Price_Orders.Include(p => p.Pricing).Include(p => p.User);
            return View(price_Orders.ToList());
        }

        // GET: Price_Orders/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Price_Orders price_Orders = db.Price_Orders.Find(id);
            if (price_Orders == null)
            {
                return HttpNotFound();
            }
            return View(price_Orders);
        }

        // GET: Price_Orders/Create
        public ActionResult Create()
        {
            ViewBag.PricingId = new SelectList(db.Pricings, "ID", "Name");
            ViewBag.UsersID = new SelectList(db.Users, "ID", "UserName");
            return View();
        }

        // POST: Price_Orders/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,PricingId,UsersID,Date")] Price_Orders price_Orders)
        {
            if (ModelState.IsValid)
            {
                db.Price_Orders.Add(price_Orders);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.PricingId = new SelectList(db.Pricings, "ID", "Name", price_Orders.PricingId);
            ViewBag.UsersID = new SelectList(db.Users, "ID", "UserName", price_Orders.UsersID);
            return View(price_Orders);
        }

        // GET: Price_Orders/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Price_Orders price_Orders = db.Price_Orders.Find(id);
            if (price_Orders == null)
            {
                return HttpNotFound();
            }
            ViewBag.PricingId = new SelectList(db.Pricings, "ID", "Name", price_Orders.PricingId);
            ViewBag.UsersID = new SelectList(db.Users, "ID", "UserName", price_Orders.UsersID);
            return View(price_Orders);
        }

        // POST: Price_Orders/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,PricingId,UsersID,Date")] Price_Orders price_Orders)
        {
            if (ModelState.IsValid)
            {
                db.Entry(price_Orders).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PricingId = new SelectList(db.Pricings, "ID", "Name", price_Orders.PricingId);
            ViewBag.UsersID = new SelectList(db.Users, "ID", "UserName", price_Orders.UsersID);
            return View(price_Orders);
        }

        // GET: Price_Orders/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Price_Orders price_Orders = db.Price_Orders.Find(id);
            if (price_Orders == null)
            {
                return HttpNotFound();
            }
            return View(price_Orders);
        }

        // POST: Price_Orders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Price_Orders price_Orders = db.Price_Orders.Find(id);
            db.Price_Orders.Remove(price_Orders);
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
