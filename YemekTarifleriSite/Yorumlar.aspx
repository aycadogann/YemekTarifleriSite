<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifleriSite.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            background-color: #C0C0C0;
        }
    .auto-style4 {
        width: 100%;
    }
        .auto-style9 {
            width: 32px;
        }
        .auto-style8 {
            width: 51px;
        }
        .auto-style6 {
        text-align: left;
    }
    .auto-style7 {
        font-size: large;
    }
        .auto-style5 {
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                          <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Ikonlar/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style5">
                             <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Ikonlar/update.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    </asp:Content>
