<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifleriSite.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style3 {
            background-color: #C0C0C0;
    }
    .auto-style4 {
        width: 100%;
    }
        .auto-style5 {
            width: 69px;
            text-align: right;
        }
        .auto-style6 {
            width: 68px;
        }
        .auto-style7 {
            width: 67px;
        }
        .auto-style10 {
            width: 42px;
        }
        .auto-style11 {
            width: 36px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="Button1_Click1" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                          <a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId") %>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Ikonlar/offer.png" Width="30px" /> </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <div>
        &nbsp;&nbsp;</div>
   <asp:Panel ID="Panel3" runat="server" CssClass="auto-style3">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button4" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td>ONAYLI TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
       <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                          <a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId") %>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Ikonlar/offer.png" Width="30px" /> </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
