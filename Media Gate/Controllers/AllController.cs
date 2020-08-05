using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using Media_Gate.Models;

namespace Media_Gate.Controllers
{
    [Authorize]
    public class AllController : Controller
    {
        // GET: All
        DB db = new DB();
        public ActionResult All()
        {
            return View();
        }

        [HttpPost]
        public ActionResult All(string Subject, HttpPostedFileBase file)
        {
            if (file != null)
            {
                List<string> Users = db.Users.Select(x => x.Email).
                    Union(db.Subscripers.Select(x => x.Email)).ToList().
                    Union(db.Contacts.Select(x => x.Email)).ToList();
                DEL.Send_Mail(Subject, file, Users);
            }   
            return View();
        }
    }
}