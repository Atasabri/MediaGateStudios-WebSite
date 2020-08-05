using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Media_Gate.Models;
using System.Net.Mail;
using System.IO;
using System.Net;

namespace Media_Gate.Controllers
{
    [HandleError(View ="ErrorPage")]
    public class HomeController : Controller
    {
        // GET: Home
        DB DB = new DB();
        public ActionResult Home()
        {
            Session["URL"] = "Home";
            return View(DB.Services.Take(3).ToList());
        }
        [HttpPost]
        public ActionResult Subscribe(string Email)
        {
            DB.Subscripers.Add(new Subscriper { Email = Email });
            DB.SaveChanges();
            return RedirectToAction("Home");
        }
        [HttpPost]
        public ActionResult Signup(FormCollection form)
        {
            string a = form["email"].ToString();
            if(DB.Users.Any(x=>x.Email==a))
            {

            }else
            {
                DB.Users.Add(new User
                {
                    UserName = form["name"],
                    Email = form["email"],
                    Password = form["password"],
                    Phone = int.Parse(form["phone"]),
                    Country = form["country"]
                });
                DB.SaveChanges();
                DEL.Send_Welcome("Welcome To Media Gate Studios", form["email"].ToString(),Server.MapPath("~/Welcome.html"));
               Session["user"] = form["email"];
            }
            if (Session["URL"] != null)
            {
                return RedirectToAction(Session["URL"].ToString());
            }
            else
            {
                return RedirectToAction("Home");
            }
        }
        [HttpPost]
        public ActionResult Login(string Email,string Password)
        {
            if(DB.Users.Any(x=>x.Email==Email&&x.Password==Password))
            {
                Session["user"] = Email;
            }
            if (Session["URL"] != null)
            {
                 return RedirectToAction(Session["URL"].ToString());
            }
             else
            {
                 return RedirectToAction("Home");
            }     
        }

        public ActionResult Logout()
        {
            Session.Remove("user");
            if (Session["URL"] != null)
            {
                return RedirectToAction(Session["URL"].ToString());
            }
            else
            {
                return RedirectToAction("Home");
            }
        }

        public ActionResult About()
        {
            Session["URL"] = "About";
            return View(DB.Teams.ToList());
        }
        public ActionResult Contacts()
        {
            Session["URL"] = "Contacts";
            return View();
        }
        [HttpPost]
        public ActionResult Contacts(FormCollection form)
        {
            DB.Contacts.Add(new Contact
            {
                Name = form["Name"],
                Email=form["Email"],
                Subject=form["Subject"],
                Message=form["Message"]
            });
            DB.SaveChanges();
            return View();
        }

        public ActionResult Services()
        {
            Session["URL"] = "Services";
            return View(DB.Services.ToList());
        }
        public ActionResult Service_Single(int? id)
        {
            if(id==null)
            {
                return RedirectToAction("Services");
            }
            else
            {
                try
                {
                    Service SERVICE = DB.Services.Single(x => x.ID == id);
                    return View(SERVICE);
                }
                catch
                {
                    return RedirectToAction("Services");
                }

            }
        }

        public ActionResult Protofolio()
        {
            Session["URL"] = "Protofolio";
            return View(DB.Protoflios.ToList());
        }
        public ActionResult Download(int id)
        {
            string path = Server.MapPath("~/Uploads/Protoflio/pdf/" + id + ".pdf");
            return File(path, "Application/Pdf", DB.Protoflios.Find(id).Name + ".pdf");
        }
        public ActionResult Pricing()
        {
            Session["URL"] = "Pricing";
            return View(DB.Pricings.ToList());
        }

        public ActionResult Content_Single(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Home");
            }
            else
            {
                try
                {
                    Content content = DB.Contents.Single(x => x.ID == id);
                    return View(content);
                }
                catch
                {
                    return RedirectToAction("Home");
                }
            }
        }

        [HttpPost]
        public ActionResult Custom_Price([Bind(Include ="ID,DateOfDeadLine,Message,Contact,Other")]Custom_Price custom_price,List<int> VideoType)
        {
            if(Session["user"]!=null&&custom_price.DateOfDeadLine!=null)
            {
                try
                {
                    if (VideoType != null)
                    {
                        foreach (var item in VideoType)
                        {
                            DB.custom_videos.Add(new custom_videos { Video_TypeID = item, CustomOrder_Id = custom_price.ID });
                        }
                    }
                    string x = Session["user"].ToString();
                    int id = DB.Users.Single(y => y.Email == x).ID;
                    custom_price.UsersID = id;
                    DB.Custom_Price.Add(custom_price);
                    DB.SaveChanges();
                }
                catch
                {
                    TempData["error"] = "Something Is Wrong !! .. Try Again";
                }
            }
            else
            {
                TempData["error"] = "Something Is Wrong !! .. Try Again";
            }

            return RedirectToAction("Pricing");
        }
        public ActionResult Buy(int priceid)
        {
            string useremail = Session["user"].ToString();
            int userid = DB.Users.Single(x => x.Email == useremail).ID;
            DB.Price_Orders.Add(new Price_Orders { PricingId = priceid, UsersID = userid, Date = DateTime.Now });
            DB.SaveChanges();
            Session["Buy"] = priceid;
            return RedirectToAction("Pricing");
        }

        public ActionResult Careers(int? id)
        {
            try
            {
                Session["URL"] = "Careers";
                if (id != null)
                {
  
                        return View(DB.Careers.Single(x => x.ID == id));

                }
                else
                {
                    try
                    {
                        return View(DB.Careers.First());
                    }
                    catch
                   {
                         return View();
                   }
                }
            }
            catch
            {
                return RedirectToAction("Home");
            }
        }
        [HttpPost]
        public ActionResult Apply([Bind(Include ="ID,Name,Email,Phone,Message")] Applicant aplicant,HttpPostedFileBase file,int Careerid)
        {
            if(file!=null)
            {
                aplicant.CareersId = Careerid;
                DB.Applicants.Add(aplicant);      
                DB.SaveChanges();
                file.SaveAs(Server.MapPath("~/Uploads/Aplicants/" + DB.Applicants.First(x=>x.Name==aplicant.Name&&x.Email==aplicant.Email).ID + ".pdf"));
            }
            return RedirectToAction("Careers",new { @id = Careerid });
        }

        public ActionResult Error()
        {
            return RedirectToAction("ErrorPage");
        }
        public ActionResult ErrorPage()
        {
            return View();
        }

        public ActionResult Soon()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Soon(string email)
        {
            DB.Subscripers.Add(new Subscriper { Email = email });
            DB.SaveChanges();
            ViewBag.Done = "Thanks , You Subscribe Us";
            return View();
        }

    }
}