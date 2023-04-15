<%@ Page Title="" Language="C#" MasterPageFile="~/PageNguoiDung/PageNguoiDung.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="DoAn_ASP.PageNguoiDung.GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">

    <div class="container">
        <h1>Giỏ Hàng</h1>
        <form runat="server">

            <asp:GridView DataKeyNames="mama" ID="gvgiohang" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered" OnRowDeleting="gvgiohang_RowDeleting" OnRowUpdating="gvgiohang_RowUpdating">
                <Columns>
                    <asp:ImageField HeaderText="Ảnh Sản Phẩm" DataImageUrlField="hinh" DataImageUrlFormatString="~/Images/{0}" ControlStyle-Width="150px"></asp:ImageField>
                    <asp:BoundField HeaderText="Tên Sản Phẩm" DataField="tenma" />
                    <asp:BoundField HeaderText="Đơn Giá" DataField="dongia" DataFormatString="{0:#,##0 Đ}" />
                    <asp:TemplateField HeaderText="Số Lượng">
                        <ItemTemplate>
                            <asp:TextBox Width="80px" TextMode="Number" CssClass="form-control text-center" ID="txtsoluong" runat="server" Text='<%# Eval("soluong")%>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Thành Tiền" DataField="thanhtien" DataFormatString="{0:#,##0 Đ}" />
                    <asp:CommandField HeaderText="Xóa" ShowDeleteButton="true" ButtonType="Image" DeleteImageUrl="~/img/delete.gif" />
                    <asp:TemplateField HeaderText="Lưu">
                        <ItemTemplate>
                            <asp:ImageButton CommandName="update" ID="ImageButton1" runat="server" ImageUrl="~/img/disk.gif" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div class="alert alert-info">Chưa có sản phẩm trong giỏ</div>
                </EmptyDataTemplate>
            </asp:GridView>

        </form>
        <div class="row">
            <div class="col-6">
                <a href="DatMonMangVe.aspx" class="btn btn-danger">Tiếp Tục Mua Hàng</a>
            </div>
            <div class="col-6 text-right">
                <asp:Label ID="lbltongthanhtien" runat="server" Text=""></asp:Label>
            </div>
        </div>

        <div class="row" style="padding-bottom: 10px">
            <div class="col-md-12 text-right">
                <a href="#" class="btn btn-success">Đặt Hàng</a>
            </div>
        </div>
    </div>
</asp:Content>
