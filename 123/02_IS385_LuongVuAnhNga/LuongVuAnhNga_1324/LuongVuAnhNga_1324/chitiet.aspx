<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="chitiet.aspx.cs" Inherits="LuongVuAnhNga_1324.chitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .hinh{
            float: left;
            margin-right: 20px;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Sản Phẩm</h1>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" > 
        <ItemTemplate>
            <div class="hinh">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/"+Eval("HinhAnh") %>' />
            </div>
            <div class="noidung">
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHang") %>'></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                <br />
                Đơn giá:
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("DonGia", "{0:0,0}") %>'></asp:Label>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

