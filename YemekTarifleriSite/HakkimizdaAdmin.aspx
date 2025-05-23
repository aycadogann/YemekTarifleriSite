<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifleriSite.HakkimizdaAdmin" %>
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
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            font-size: medium;
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
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    <table class="auto-style4">
        <tr>
            <td><em>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style12" Height="250px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </em></td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Button ID="btnGuncelle" runat="server" CssClass="auto-style11" Font-Bold="True" Text="Guncelle" Width="200px" OnClick="btnGuncelle_Click" />
            </td>
        </tr>
    </table>
        </asp:Panel>
</asp:Content>
