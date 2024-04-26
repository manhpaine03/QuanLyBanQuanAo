
using Web_BTL.Models;

namespace Web_BTL.Repository
{

    public class LoaiSpRepository : ILoaiSpRepository
    {
        private readonly QlbanQuanAoContext _context;
        private object?[]? maloaiSP;

        public LoaiSpRepository(QlbanQuanAoContext context)
        {
            _context = context;
        }

        public TLoaiSp Add(TLoaiSp loaiSp)
        {
            _context.TLoaiSps.Add(loaiSp);
            _context.SaveChanges();
            return loaiSp;
        }

        public TLoaiSp Delete(string maLoaiSP)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<TLoaiSp> GetAllLoaiSp()
        {
            return _context.TLoaiSps;
        }

        public TLoaiSp GetLoaiSp(string loaiSp)
        {
            return _context.TLoaiSps.Find(maloaiSP);
        }

        public TLoaiSp Update(TLoaiSp loaiSp)
        {
            _context.Update(loaiSp);
            _context.SaveChanges();
            return loaiSp;
        }
    }
}
