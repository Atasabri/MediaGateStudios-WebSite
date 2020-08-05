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
    public class ServicesController : Controller
    {
        private DB db = new DB();

        // GET: Services
        public ActionResult Index()
        {
            return View(db.Services.ToList());
        }

        // GET: Services/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Service service = db.Services.Find(id);
            if (service == null)
            {
                return HttpNotFound();
            }
            return View(service);
        }

        // GET: Services/Create
        public ActionResult Create()
        {
            Session.Remove("Details");
            return View();
        }

        // POST: Services/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name,Description")] Service service,List<HttpPostedFileBase> file)
        {
            if (ModelState.IsValid)
            {
                service.Service_Details = Session["Details"] as List<Service_Details>;
                db.Services.Add(service);
                db.SaveChanges();
                foreach (HttpPostedFileBase item in file)
                {
                   string path= Path.GetExtension(item.FileName);
                    if(path.ToLower() == ".jpg" || path.ToLower() == ".png" || path.ToLower() == ".bmp" ||
                    path.ToLower() == ".tiff" || path.ToLower() == ".exif" || path.ToLower() == ".bpg")
                    {
                        if(item==file[0])
                        {
                            item.SaveAs(Server.MapPath("~/Uploads/Services/Img/" + service.ID+".jpg"));
                        }
                        else
                        {
                            item.SaveAs(Server.MapPath("~/Uploads/Services/Img/" + service.ID + item.FileName));
                        }
                    }
                    else if(path.ToLower() == ".webm" || path.ToLower() == ".3gp" || path.ToLower() == ".m4v" ||
                    path.ToLower() == ".mp4" || path.ToLower() == ".gif" || path.ToLower() == ".flv" || path.ToLower() == ".3gpp")
                    {
                        item.SaveAs(Server.MapPath("~/Uploads/Services/videos/" + service.ID + item.FileName));
                    }
                }
                Session.Remove("Details");
                return RedirectToAction("Index");
            }

            return View(service);
        }

        // GET: Services/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Service service = db.Services.Find(id);
            if (service == null)
            {
                return HttpNotFound();
            }
            Session.Remove("Details");
            return View(service);
        }

        // POST: Services/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name,Description")] Service service,List<HttpPostedFileBase>file)
        {
            if (ModelState.IsValid)
            {
                if(Session["Details"]!=null)
                {
                    foreach (var item in Session["Details"] as List<Service_Details>)
                    {
                        db.Service_Details.Add(new Service_Details { Detail = item.Detail, ServicesId = service.ID });
                    }
                }
                //service.Service_Details = Session["Details"] as List<Service_Details>;
                db.Entry(service).State = EntityState.Modified;
                db.SaveChanges();
                if(file!=null)
                {
                    if (file[0] != null)
                    {
                        string path;
                        foreach (HttpPostedFileBase item in file)
                        {
                            path = Path.GetExtension(item.FileName);
                            if (path.ToLower() == ".jpg" || path.ToLower() == ".png" || path.ToLower() == ".bmp" ||
                            path.ToLower() == ".tiff" || path.ToLower() == ".exif" || path.ToLower() == ".bpg")
                            {
                                if(new FileInfo(Server.MapPath("~/Uploads/Services/Img/"+service.ID+".jpg")).Exists)
                                {
                                    item.SaveAs(Server.MapPath("~/Uploads/Services/Img/" + service.ID + item.FileName));
                                }else
                                {
                                    item.SaveAs(Server.MapPath("~/Uploads/Services/Img/" + service.ID + ".jpg"));
                                }
                            }
                            else if (path.ToLower() == ".webm" || path.ToLower() == ".3gp" || path.ToLower() == ".m4v" ||
                            path.ToLower() == ".mp4" || path.ToLower() == ".gif" || path.ToLower() == ".flv" || path.ToLower() == ".3gpp")
                            {
                                item.SaveAs(Server.MapPath("~/Uploads/Services/videos/" + service.ID + item.FileName));
                            }
                        }
                    }
                }             
                Session.Remove("Details");
                return RedirectToAction("Index");
            }
            return View(service);
        }

        // GET: Services/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Service service = db.Services.Find(id);
            if (service == null)
            {
                return HttpNotFound();
            }
            return View(service);
        }

        // POST: Services/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Service service = db.Services.Find(id);
            db.Services.Remove(service);
            db.SaveChanges();
            foreach (string item in Directory.GetFiles(Server.MapPath("~/Uploads/Services/Img"),id+"*"))
            {
                FileInfo F = new FileInfo(item);
                F.Delete();
            }
            foreach (string item in Directory.GetFiles(Server.MapPath("~/Uploads/Services/videos"), id + "*"))
            {
                FileInfo F = new FileInfo(item);
                F.Delete();
            }
            return RedirectToAction("Index");
        }

        public ActionResult DeleteSRC(string path,int id)
        {
            FileInfo F = new FileInfo(Server.MapPath(path));
            if(F.Exists)
            {
                F.Delete();
            }
            return RedirectToAction("Edit", new { @id = id });
        }
        [HttpPost]
        public ActionResult AddDetail(string detail)
        {
            if(Session["Details"]==null)
            {
                List<Service_Details> List = new List<Service_Details>();
                List.Add(new Service_Details { Detail = detail });
                Session["Details"] = List;
            }
            else
            {
                List<Service_Details> List = Session["Details"] as List<Service_Details>;
                List.Add(new Service_Details { Detail = detail});
                Session["Details"] = List;
            }
            return PartialView("_Details");
        }

        public ActionResult DeleteDetail(int id,int l)
        {
            db.Service_Details.Remove(db.Service_Details.Find(id));
            db.SaveChanges();
            return RedirectToAction("Edit", new { id = l });
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
