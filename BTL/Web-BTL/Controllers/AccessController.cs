using Microsoft.AspNetCore.Mvc;
using Web_BTL.Models;

namespace Web_BTL.Controllers
{
    public class AccessController : Controller
    { 
        QlbanQuanAoContext db = new QlbanQuanAoContext();
        [HttpGet]
        public IActionResult Login()
        {
            if (HttpContext.Session.GetString("UserName") == null)
            {
                return View();
            }

            else
            {
                return RedirectToAction("Index","Home");
            }

        }

        [HttpPost]

        public IActionResult Login(TUser user)
        {
            if(HttpContext.Session.GetString("UserName")==null)
            {
                var u=db.TUsers.Where(x=>x.Username.Equals(user.Username) && x.Password.Equals(user.Password) && x.LoaiUser == 0).FirstOrDefault();
                if(u!=null)
                {
                    HttpContext.Session.SetString("UserName",u.Username.ToString());
                    return RedirectToAction("Index", "Home");
                }

                var v = db.TUsers.Where(x => x.Username.Equals(user.Username) && x.Password.Equals(user.Password) && x.LoaiUser == 1).FirstOrDefault();
                if (v != null)
                {
                    HttpContext.Session.SetString("UserName", v.Username.ToString());
                    return RedirectToAction("Index", "Admin");
                }

            }
            return View();
        }

        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            HttpContext.Session.Remove("UserName");
            return RedirectToAction("Login", "Access");

        }
    }
}
