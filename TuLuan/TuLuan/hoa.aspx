<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="hoa.aspx.cs" Inherits="TuLuan.hoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .noidung{
            float: left;
            margin-right: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            
            <ItemTemplate >
                <div class="ndung">
                 <asp:Image ID="Image1" runat="server"  ImageUrl='<%# "~/img/" + Eval("Hinh") %>'/>
                <br />
                
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("MaHoa") %>' Text='<%# "Ten Hoa:" + Eval("TenHoa") %>' OnClick="LinkButton2_Click"></asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="LinkButton3" runat="server" Text='<%# "Gia:" + Eval("dongia") %>'></asp:LinkButton>
                </div>
            </ItemTemplate>

        </asp:DataList>
</asp:Content>
