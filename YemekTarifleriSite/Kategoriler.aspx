﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifleriSite.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            background-color: #C0C0C0;
        }
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        text-align: right;
    }
    .auto-style6 {
        text-align: left;
    }
    .auto-style7 {
        font-size: large;
    }
        .auto-style8 {
            width: 51px;
        }
        .auto-style9 {
            width: 32px;
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
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                           <a href="Kategoriler.aspx?KategoriId=<%#Eval("KategoriId") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Ikonlar/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style5">
                            <a href="KategoriDuzenle.aspx?KategoriId=<%#Eval("KategoriId") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Ikonlar/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <div>
            &nbsp;&nbsp;
        </div>
</asp:Panel>
    <div>
        &nbsp;&nbsp;</div>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style3">
        <asp:Panel ID="Panel4" runat="server" CssClass="auto-style3">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style9">
                        <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="Button4" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                    </td>
                    <td>KATEGORİ EKLEME</td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Kategori Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Kategori İkon:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnEkle" runat="server" Text="Ekle" OnClick="btnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

