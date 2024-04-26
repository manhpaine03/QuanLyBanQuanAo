using Web_BTL.Models;
namespace Web_BTL.Repository
{
    public interface ILoaiSpRepository
    {
        TLoaiSp Add(TLoaiSp loaiSp);
        TLoaiSp Update(TLoaiSp loaiSp);

        TLoaiSp Delete(string maloaiSP); 

        TLoaiSp GetLoaiSp(string maloaiSp);

        IEnumerable<TLoaiSp> GetAllLoaiSp();
    }
}
