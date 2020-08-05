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
    public class ProtofliosController : Controller
    {
        private DB db = new DB();

        // GET: Protoflios
        public ActionResult Index()
        {           
            return View(db.Protoflios.ToList());
        }

        // GET: Protoflios/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Protoflio protoflio = db.Protoflios.Find(id);
            if (protoflio == null)
            {
                return HttpNotFound();
            }
            return View(protoflio);
        }

        // GET: Protoflios/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Protoflios/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Name")] Protoflio protoflio,HttpPostedFileBase file)
        {
            if (ModelState.IsValid&&file!=null)
            {
                db.Protoflios.Add(protoflio);
                db.SaveChanges();
               string path= Path.GetExtension(file.FileName);
                if(path.ToLower()==".jpg"|| path.ToLower() == ".png"|| path.ToLower() == ".bmp"||
                    path.ToLower() == ".tiff" || path.ToLower() == ".exif" || path.ToLower() == ".bpg")
                {
                    file.SaveAs(Server.MapPath("~/Uploads/Protoflio/Img/"+protoflio.ID+".jpg"));

                }else if (path.ToLower() == ".webm" || path.ToLower() == ".3gp" || path.ToLower() == ".m4v" ||
                    path.ToLower() == ".mp4" || path.ToLower() == ".gif" || path.ToLower() == ".flv"|| path.ToLower() == ".3gpp")
                {
                    file.SaveAs(Server.MapPath("~/Uploads/Protoflio/Videos/" + protoflio.ID + ".mp4"));
                }else if(path.ToLower()==".pdf")
                {
                    file.SaveAs(Server.MapPath("~/Uploads/Protoflio/pdf/" + protoflio.ID + ".pdf"));
                }
                return RedirectToAction("Index");
            }

            return View(protoflio);
        }

        // GET: Protoflios/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Protoflio protoflio = db.Protoflios.Find(id);
            if (protoflio == null)
            {
                return HttpNotFound();
            }
            return View(protoflio);
        }

        // POST: Protoflios/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Name")] Protoflio protoflio,HttpPostedFileBase file)
        {
            if (ModelState.IsValid)
            {
                db.Entry(protoflio).State = EntityState.Modified;
                db.SaveChanges();
                if(file!=null)
                {
                    string path = Path.GetExtension(file.FileName);
                    if (path.ToLower() == ".jpg" || path.ToLower() == ".png" || path.ToLower() == ".bmp" ||
                        path.ToLower() == ".tiff" || path.ToLower() == ".exif" || path.ToLower() == ".bpg")
                    {
                        file.SaveAs(Server.MapPath("~/Uploads/Protoflio/Img/" + protoflio.ID + ".jpg"));

                    }
                    else if (path.ToLower() == ".webm" || path.ToLower() == ".3gp" || path.ToLower() == ".m4v" ||
                       path.ToLower() == ".mp4" || path.ToLower() == ".gif" || path.ToLower() == ".flv" || path.ToLower() == ".3gpp")
                    {
                        file.SaveAs(Server.MapPath("~/Uploads/Protoflio/Videos/" + protoflio.ID + ".mp4"));
                    }
                    else if (path.ToLower() == ".pdf")
                    {
                        file.SaveAs(Server.MapPath("~/Uploads/Protoflio/pdf/" + protoflio.ID + ".pdf"));
                    }
                }
                return RedirectToAction("Index");
            }
            return View(protoflio);
        }

        // GET: Protoflios/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            Protoflio protoflio = db.Protoflios.Find(id);
            if (protoflio == null)
            {
                return HttpNotFound();
            }
            return View(protoflio);
        }

        // POST: Protoflios/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Protoflio protoflio = db.Protoflios.Find(id);
            db.Protoflios.Remove(protoflio);
            db.SaveChanges();
            FileInfo fVideo = new FileInfo(Server.MapPath("~/Uploads/Protoflio/Videos/" + protoflio.ID + ".mp4"));
            if (fVideo.Exists)
            {
                fVideo.Delete();
            }
            else
            {
                FileInfo fPdf = new FileInfo(Server.MapPath("~/Uploads/Protoflio/pdf/" + protoflio.ID + ".pdf"));
                if (fPdf.Exists)
                {
                    fPdf.Delete();
                }
                else
                {
                    FileInfo fimg = new FileInfo(Server.MapPath("~/Uploads/Protoflio/Img/" + protoflio.ID + ".jpg"));
                    if (fimg.Exists)
                    {
                        fimg.Delete();
                    }
                }

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
