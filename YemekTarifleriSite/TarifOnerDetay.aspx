<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifleriSite.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="auto-style5">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9"><strong><em>Tarif Ad:</em></strong></td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9"><strong><em>Malzemeler:</em></strong></td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9"><strong><em>Yapılış:</em></strong></td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9"><strong><em>Tarif Resim:</em></strong></td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9"><strong><em>Tarif Öneren:</em></strong></td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9"><strong><em>Öneren Mail:</em></strong></td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9"><strong><em>Kategori: </em></strong></td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="200px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><strong>
                                <asp:Button ID="btnOnayla" runat="server" CssClass="auto-style10" OnClick="btnOnayla_Click" Text="Onayla" Width="200px" />
                                </strong></td>
                        </tr>
                    </table>
    </asp:Panel>
    </asp:Content>
