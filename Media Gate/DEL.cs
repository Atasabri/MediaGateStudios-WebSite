using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Net.Mail;
using System.Configuration;
using LinqToTwitter;
using System.Net;

namespace Media_Gate
{
    public class DEL
    {
        public static void Send_Mail(string Subject,HttpPostedFileBase file,List<string> To)
        {
            string From = ConfigurationManager.AppSettings["Email"].ToString();
            string Pass = ConfigurationManager.AppSettings["Password"].ToString();
            MailMessage mail = new MailMessage();
            mail.From =new MailAddress(From);
            foreach (var item in To)
            {
                if(item.Contains("@"))
                {
                    mail.To.Add(item);
                }
            }          
             mail.Subject = Subject;
             StreamReader read = new StreamReader(file.InputStream);
             mail.Body = read.ReadToEnd();
             mail.IsBodyHtml = true;
            ///-------------------------------------------------------------------------//
            SmtpClient smtpMail = new SmtpClient();
            smtpMail.EnableSsl = false;
            smtpMail.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpMail.Host = "relay-hosting.secureserver.net";
            smtpMail.Port = 25;

            smtpMail.UseDefaultCredentials = false;
            smtpMail.Credentials = new NetworkCredential(From, Pass);
            ///-------------------------------------------------------------------------//
            smtpMail.Send(mail);
        }
        public static void Send_Welcome(string subject,string to,string path)
        {
            string From = ConfigurationManager.AppSettings["Email"].ToString();
            string Pass = ConfigurationManager.AppSettings["Password"].ToString();
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress(From);
            if(to.Contains("@"))
            {
                mail.To.Add(to);
            }
            mail.Subject = subject;
            StreamReader read = new StreamReader(path);
            mail.Body = read.ReadToEnd();
            mail.IsBodyHtml = true;
            ///-------------------------------------------------------------------------//
            SmtpClient smtpMail = new SmtpClient();
            smtpMail.EnableSsl = false;
            smtpMail.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpMail.Host = "relay-hosting.secureserver.net";
            smtpMail.Port = 25;

            smtpMail.UseDefaultCredentials = false;
            smtpMail.Credentials = new NetworkCredential(From, Pass);
            ///-------------------------------------------------------------------------//
            smtpMail.Send(mail);
        }
        public static List<Status> GetTwitterFeeds()
        {
            string screenname = "AtaEldon1";

            var auth = new SingleUserAuthorizer
            {

                CredentialStore = new InMemoryCredentialStore()
                {

                    ConsumerKey = "aidffx7BfRO6AgblnbRc1UcdK",
                    ConsumerSecret = "Sm2EyZj249Kq6qlDz89geOT5rqkUGUjQHKiEaOjcYRWaOUABPn",
                    OAuthToken = "3863845354-AoXdPgwqOrY9jvstIwDxyp3fWy956kj946w50sz",
                    OAuthTokenSecret = "zjjcWfDca9JpmIwf83CUCfXxxNwqS8lofQIUdkpt0yYDv"

                }

            };
            var twitterCtx = new TwitterContext(auth);
            var ownTweets = new List<Status>();

            ulong maxId = 0;
            bool flag = true;
            var statusResponse = new List<Status>();
            statusResponse = (from tweet in twitterCtx.Status
                              where tweet.Type == StatusType.User
                              && tweet.ScreenName == screenname
                              && tweet.Count == 200
                              select tweet).ToList();

            if (statusResponse.Count > 0)
            {
                maxId = ulong.Parse(statusResponse.Last().StatusID.ToString()) - 1;
                ownTweets.AddRange(statusResponse);

            }
            do
            {
                int rateLimitStatus = twitterCtx.RateLimitRemaining;
                if (rateLimitStatus != 0)
                {

                    statusResponse = (from tweet in twitterCtx.Status
                                      where tweet.Type == StatusType.User
                                      && tweet.ScreenName == screenname
                                      && tweet.MaxID == maxId
                                      && tweet.Count == 200
                                      select tweet).ToList();

                    if (statusResponse.Count != 0)
                    {
                        maxId = ulong.Parse(statusResponse.Last().StatusID.ToString()) - 1;
                        ownTweets.AddRange(statusResponse);
                    }
                    else
                    {
                        flag = false;
                    }
                }
                else
                {
                    flag = false;
                }
            } while (flag);

            return ownTweets;
        }
    }
}