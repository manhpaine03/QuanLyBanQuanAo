using Web_BTL.Models;
using Microsoft.AspNetCore.Mvc;
using Web_BTL.Repository;

namespace Web_BTL.ViewComponents
{
    public class LoaiSpMenuViewComponent: ViewComponent
    {
        private readonly ILoaiSpRepository _loaiSp;

        public LoaiSpMenuViewComponent(ILoaiSpRepository loaiSpRepository)
        {
            _loaiSp = loaiSpRepository; 
        }
        public IViewComponentResult Invoke()
        {
            var loaisp = _loaiSp.GetAllLoaiSp().OrderBy(x=>x.Loai);
            return View(loaisp);
        }
    }
}
