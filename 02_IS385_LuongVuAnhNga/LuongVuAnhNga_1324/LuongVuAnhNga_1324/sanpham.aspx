<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="LuongVuAnhNga_1324.sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Sản Phẩm</h1>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" > 
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHang") %>'></asp:Label>
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/"+Eval("HinhAnh") %>' />
            <br />
            Giá: <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia", "{0:0,0}") %>'></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("MaHang") %>' OnClick="LinkButton2_Click">Chi tiết</asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
