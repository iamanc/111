<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="WebApplication1.sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Sản phẩm</h2>
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/img/"+Eval("Hinh") %>' />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHang") %>'></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("DonGia","{0:0,0}VND") %>' ForeColor="Red" Font-Bold="true"></asp:Label>
            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("MaHang") %>' OnClick="LinkButton2_Click">Chi tiết</asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
