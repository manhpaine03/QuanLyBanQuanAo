using Azure;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Web_BTL.Models;
using Web_BTL.Models.Authentication;
using X.PagedList;

namespace Web_BTL.Areas.Admin.Controllers
{
    [Area("admin")]
    [Route("admin")]
    [Route("admin/homeadmin")]
    public class HomeAdminController1 : Controller
    {
        QlbanQuanAoContext db = new QlbanQuanAoContext();
        [Route("")]
        [Route("index")]

        [Authentication]
        public IActionResult Index()
        {
            return View();
        }

        [Route("danhmucsanpham")]
        public IActionResult DanhMucSP(int? page)
        {
            int pageSize = 8;
            int pageNumber = page == null || page < 0 ? 1 : page.Value;
            var lstsanpham = db.TDanhMucSps.AsNoTracking().OrderBy(x => x.TenSp);
            PagedList<TDanhMucSp> lst = new PagedList<TDanhMucSp>(lstsanpham, pageNumber, pageSize);
            return View(lst);
        }

        [Route("themsanpham")]
        [HttpGet]
        public IActionResult ThemSP() 
        {
            ViewBag.MaChatLieu = new SelectList(db.TChatLieus.ToList(),"MaChatLieu","ChatLieu");
            ViewBag.MaHangSx = new SelectList(db.THangSxes.ToList(), "MaHangSx", "HangSx");
            ViewBag.MaLoai = new SelectList(db.TLoaiSps.ToList(), "MaLoai", "Loai");
            return View();
        }
        [Route("themsanpham")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult ThemSP(TDanhMucSp maSp)
        {
            if(ModelState.IsValid)
            {   
              db.TDanhMucSps.Add(maSp);
                db.SaveChanges();
                return RedirectToAction("danhmucsanpham","Admin");
            }
            return View(maSp);
        }

        [Route("SuaSanPham")]
        [HttpGet]
        public IActionResult SuaSanPham(string maSanPham)
        {
            ViewBag.MaChatLieu = new SelectList(db.TChatLieus.ToList(), "MaChatLieu", "ChatLieu");
            ViewBag.MaHangSx = new SelectList(db.THangSxes.ToList(), "MaHangSx", "HangSx");
            ViewBag.MaLoai = new SelectList(db.TLoaiSps.ToList(), "MaLoai", "Loai");
            var sanPham = db.TDanhMucSps.Find(maSanPham);
            return View(sanPham);
        }
        [Route("SuaSanPham")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult SuaSanPham(TDanhMucSp sanPham)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sanPham).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("danhmucsanpham","Admin");
            }
            return View(sanPham);
        }

        [Route("XoaSanPham")]
        [HttpGet]
        public IActionResult XoaSanPham(string maSanPham)
        {
            TempData["Message"] = "";
            var chiTietSanPham = db.TChiTietSanPhams.Where(x=>x.MaSp == maSanPham).ToList();
            if(chiTietSanPham.Count() > 0)
            {
                TempData["Message"] = "Không xóa được ";
                return RedirectToAction("danhmucsanpham", "Admin");
            }
            var anhSanPhams = db.TAnhSps.Where(x=>x.MaSp==maSanPham);
            if(anhSanPhams.Any()) db.RemoveRange(anhSanPhams);
            db.Remove(db.TDanhMucSps.Find(maSanPham));
            db.SaveChanges();
            TempData["Message"] = "Đã xóa ";
            return RedirectToAction("danhmucsanpham", "Admin");
        }
    }
}

