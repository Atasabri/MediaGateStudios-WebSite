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
    public class ContentsController : Controller
    {
        private DB db = new DB();

        // GET: Contents
        public ActionResult Index()
        {
            Session.Remove("Details");
            return View(db.Contents.ToList());
        }

        // GET: Contents/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Content content = db.Contents.Find(id);
            if (content == null)
            {
                return HttpNotFound();
            }
            return View(content);
        }

        // GET: Contents/Create
        public ActionResult Create()
        {
            Session.Remove("Details");
            return View();
        }

        // POST: Contents/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name,Description")] Content content,List<HttpPostedFileBase> file)
        {
            if (ModelState.IsValid)
            {
                content.Content_Details = Session["Details"] as List<Content_Details>;
                db.Contents.Add(content);
                db.SaveChanges();
                foreach (HttpPostedFileBase item in file)
                {
                    string path = Path.GetExtension(item.FileName);
                    if (path.ToLower() == ".jpg" || path.ToLower() == ".png" || path.ToLower() == ".bmp" ||
                    path.ToLower() == ".tiff" || path.ToLower() == ".exif" || path.ToLower() == ".bpg")
                    {
                        if (item == file[0])
                        {
                            item.SaveAs(Server.MapPath("~/Uploads/Content/Img/" + content.ID + ".jpg"));
                        }
                        else
                        {
                            item.SaveAs(Server.MapPath("~/Uploads/Content/Img/" + content.ID + item.FileName));
                        }
                    }
                    else if (path.ToLower() == ".webm" || path.ToLower() == ".3gp" || path.ToLower() == ".m4v" ||
                    path.ToLower() == ".mp4" || path.ToLower() == ".gif" || path.ToLower() == ".flv" || path.ToLower() == ".3gpp")
                    {
                        item.SaveAs(Server.MapPath("~/Uploads/Content/videos/" + content.ID + item.FileName));
                    }
                }
                Session.Remove("Details");
                return RedirectToAction("Index");
            }

            return View(content);
        }

        // GET: Contents/Edit/5
        public ActionResult Edit(int? id)
        {
            Session.Remove("Details");
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Content content = db.Contents.Find(id);
            if (content == null)
            {
                return HttpNotFound();
            }
            return View(content);
        }

        // POST: Contents/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name,Description")] Content content,List<HttpPostedFileBase> file)
        {
            if (ModelState.IsValid)
            {
                db.Entry(content).State = EntityState.Modified;
                db.SaveChanges();
                if (Session["Details"] != null)
                {
                    foreach (var item in Session["Details"] as List<Content_Details>)
                    {
                        db.Content_Details.Add(new Content_Details { Detail = item.Detail, content_ID = content.ID });
                    }
                }
                //service.Service_Details = Session["Details"] as List<Service_Details>;
                db.Entry(content).State = EntityState.Modified;
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
                                if(new FileInfo(Server.MapPath("~/Uploads/Content/Img/"+content.ID+".jpg")).Exists)
                                {
                                    item.SaveAs(Server.MapPath("~/Uploads/Content/Img/" + content.ID + item.FileName));
                                }
                                else
                                {
                                    item.SaveAs(Server.MapPath("~/Uploads/Content/Img/" + content.ID + ".jpg"));
                                }
                            }
                            else if (path.ToLower() == ".webm" || path.ToLower() == ".3gp" || path.ToLower() == ".m4v" ||
                            path.ToLower() == ".mp4" || path.ToLower() == ".gif" || path.ToLower() == ".flv" || path.ToLower() == ".3gpp")
                            {
                                item.SaveAs(Server.MapPath("~/Uploads/Content/videos/" + content.ID + item.FileName));
                            }
                        }
                    }
                }
                Session.Remove("Details");
                return RedirectToAction("Index");
            }
            return View(content);
        }

        // GET: Contents/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Content content = db.Contents.Find(id);
            if (content == null)
            {
                return HttpNotFound();
            }
            return View(content);
        }

        // POST: Contents/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Content content = db.Contents.Find(id);
            db.Contents.Remove(content);
            db.SaveChanges();
            foreach (string item in Directory.GetFiles(Server.MapPath("~/Uploads/Content/Img"), id + "*"))
            {
                FileInfo F = new FileInfo(item);
                F.Delete();
            }
            foreach (string item in Directory.GetFiles(Server.MapPath("~/Uploads/Content/videos"), id + "*"))
            {
                FileInfo F = new FileInfo(item);
                F.Delete();
            }
            return RedirectToAction("Index");
        }
        [HttpPost]
        public ActionResult AddDetail(string Detail)
        {
            if(Session["Details"]==null)
            {
                List<Content_Details> list = new List<Content_Details>();
                list.Add(new Content_Details { Detail = Detail });
                Session["Details"] = list;
            }
            else
            {
                List<Content_Details> list = Session["Details"] as List<Content_Details>;
                list.Add(new Content_Details { Detail = Detail });
                Session["Details"] = list;
            }
            return PartialView("_Details");
        }
        public ActionResult DeleteSRC(string path, int id)
        {
            FileInfo F = new FileInfo(Server.MapPath(path));
            if (F.Exists)
            {
                F.Delete();
            }
            return RedirectToAction("Edit", new { @id = id });
        }
        public ActionResult DeleteDetail(int id, int l)
        {
            db.Content_Details.Remove(db.Content_Details.Find(id));
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
