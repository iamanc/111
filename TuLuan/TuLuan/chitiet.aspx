<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="chitiet.aspx.cs" Inherits="TuLuan.chitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .hinh{
            float:left;
            margin-right:15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <div class="hinh">
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/img/" + Eval("Hinh") %>' />
            <br />
            </div>
            <div class="cont">
            Ten hang:
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("DonGia","{0:0,0}") %>'></asp:Label>
            &nbsp;VND
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text='Mua' />
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
