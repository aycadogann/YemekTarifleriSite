<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifleriSite.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        text-align: right;
    }
    .auto-style6 {
        font-size: x-large;
        text-align: center;
    }
    .auto-style7 {
        color: #FFFFCC;
        background-color: #FF6690;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style6" colspan="2"><em><span class="auto-style7"><strong>MESAJ PANELİ</strong></span></em></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="txtGonderen" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Mail Adresiniz:</strong></td>
        <td>
            <asp:TextBox ID="txtMail" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="txtBaslık" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Mesaj:</strong></td>
        <td>
            <asp:TextBox ID="txtMesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            &nbsp;<asp:Button ID="btnGonder" runat="server" Font-Bold="True" Font-Size="Large" Text="Gönder" Width="230px" CssClass="fb8" OnClick="btnGonder_Click" />
        </td>
    </tr>
</table>
</asp:Content>
