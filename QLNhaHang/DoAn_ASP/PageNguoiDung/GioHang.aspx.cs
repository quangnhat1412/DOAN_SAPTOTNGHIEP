﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DoAn_ASP.Models;

namespace DoAn_ASP.PageNguoiDung
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                NapDuLieu();
            }
        }

        private void NapDuLieu()
        {
            CartDAO cart = (CartDAO)Session["CART"];
            if (cart != null)
            {
                // Liên kết dữ liệu cho gvgiohang
                gvgiohang.DataSource = cart.items;
                gvgiohang.DataBind();
                // Gán tổng thành tiền cho lbltongthanhtien
                lbltongthanhtien.Text = string.Format("Tổng Thành Tiền: <b> {0:#,##0} VNĐ </b>", cart.Total);
            }
        }

        protected void gvgiohang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Lấy mã sản phẫm cần xóa khỏi giỏ hàng 
            string mama = gvgiohang.DataKeys[e.RowIndex].Value.ToString();
            // lấy giỏ hàng từ session 
            CartDAO cart = (CartDAO)Session["CART"];
            // xóa sản phẩm khỏi giỏ 
            cart.Delete(mama);
            // Nạp lại dữ liệu cho gvGioHang
            NapDuLieu();
        }

        protected void gvgiohang_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Lấy mã sản phẫm và số lượng cần cập nhật trong giỏ hàng 
            string mama = gvgiohang.DataKeys[e.RowIndex].Value.ToString();
            int soluongmoi = int.Parse(((TextBox)gvgiohang.Rows[e.RowIndex].FindControl("txtSoLuong")).Text);
            // lấy giỏ hàng từ session 
            CartDAO cart = (CartDAO)Session["CART"];
            // Cập nhật lại sản phẩm
            cart.Update(mama, soluongmoi);
            // Nạp lại dữ liệu cho gvGioHang
            NapDuLieu();
        }

    }
}