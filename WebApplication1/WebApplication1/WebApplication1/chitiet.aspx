<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="chitiet.aspx.cs" Inherits="WebApplication1.chitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .hinh{
        margin-right:20px;
    }
    .content{
        margin-right:20px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Chi tiết sản phẩm</h2>
    <asp:DataList ID="DataList1" runat="server" style="margin-right: 209px" Width="665px">
        <ItemTemplate>

            <div class="hinh">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/img/"+Eval("Hinh") %>' />
            </div>
            
            <div class="content">
                <asp:Label ID="Label4" runat="server" Text="Tên:" Font-Underline="true"></asp:Label>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHang") %>'></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Mô tả:" Font-Underline="true"></asp:Label>

                <asp:Label ID="Label2" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Đơn giá:" Font-Underline="true"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("DonGia","{0:0,0}VND") %>' ForeColor="Red" Font-Bold="true"></asp:Label>
            </div>
        </ItemTemplate>

    </asp:DataList>
</asp:Content>
