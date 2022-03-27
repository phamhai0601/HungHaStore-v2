﻿using HungHaStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HungHaStore.Helper;
using System.Net;
using System.Data.Entity;
using PagedList;

namespace HungHaStore.Controllers
{
    public class HomeController : Controller
    {
        public static Model1 db = new Model1();

        //Trang chủ
        public ActionResult Index()
        {
            // lấy dữ liệu từ database
            var loaiSanPham = db.loai_sp.SqlQuery("select * from loai_sp").ToList(); 
            var sanPhamNoiBat = db.san_pham.SqlQuery("select TOP 16 * from san_pham ").ToList(); 
            var sanPhamMoiNhat = db.san_pham.SqlQuery("select TOP 4 * from san_pham order by tg_tao desc").ToList();
            var sanPhamXemNhieu = db.san_pham.SqlQuery("select TOP 4 * from san_pham order by luot_xem desc").ToList();
            var sanPhamGiamGia = db.san_pham.SqlQuery("select TOP 4 * from san_pham where giam_gia > 0 order by giam_gia desc").ToList();
            //----------------------------------


            //truyền DL sang view
            ViewBag.sanPhamGiamGia = sanPhamGiamGia;
            ViewBag.sanPhamXemNhieu = sanPhamXemNhieu;
            ViewBag.sanPhamMoiNhat = sanPhamMoiNhat;
            ViewBag.sanPhamNoiBat = sanPhamNoiBat; 
            ViewBag.loaiSanPham = loaiSanPham; 
            //------------------------
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";
            return View();
        }

        //Show danh sách hóa đơn
        public ActionResult ListInvoice()
        {
            nguoi_dung identity = AuthorHelper.getIdentity();
            if(identity == null)
            {
                return RedirectToAction("Index", "Home");
            }
            List<hoa_don> hoaDons = db.hoa_don.Where(s => s.id_nd == identity.id).ToList();
            return View(hoaDons);
        }


        //Yêu cầu hủy hóa đơn.
        public ActionResult RequestCancelInvoice(int? id)
        {

            if(id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            hoa_don hoaDon = db.hoa_don.Find(id);
            if(hoaDon == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            hoaDon.trang_thai = hoa_don.TRANG_THAI_YEU_CAU_HUY;
            UpdateModel(hoaDon);
            db.SaveChanges();
            HttpContext.Session["typeAlert"] = "success";
            HttpContext.Session["messageAlert"] = "Yêu cầu hủy thành công, chờ quản trị viên xác nhận.";
            return RedirectToAction("ListInvoice", "Home");
        }

    }
}