<%@ Page Title="" Language="C#" MasterPageFile="~/qlbh.Master" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="quanlybanhoa_123.sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/img/"+Eval("Hinh") %>' />
            <br />
            Tên hoa: <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
            <br />
            Giá: <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia","{0:0,0}") %>'></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MaHoa") %>' OnClick="LinkButton1_Click">Chi tiết</asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
