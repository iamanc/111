<%@ Page Title="" Language="C#" MasterPageFile="~/qlbh.Master" AutoEventWireup="true" CodeBehind="chitiet.aspx.cs" Inherits="quanlybanhoa_123.chitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .hinh{float:left;
            
        }
        .noidung{float:right;
             
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <div class="hinh">
                 <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/img/"+Eval("Hinh") %>' />
            </div>
            <div class="noidung">
                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
                 <br />
                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                 <br />
                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                 <br />
                 <asp:Button ID="Button1" runat="server" Text="Button" />
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
