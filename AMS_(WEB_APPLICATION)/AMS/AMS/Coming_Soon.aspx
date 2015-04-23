<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Coming_Soon.aspx.cs" Inherits="Coming_Soon_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" align="center" width="100%" style="margin-top: 10%;">
        <tr>
            <td style="text-align: center" height="50px" valign="bottom">
                <asp:Label ID="Label1" align="center" ForeColor="#AE1213" runat="server" Text="Coming Soon" Font-Size="XX-Large" Font-Bold="true" Font-Names="Comic Sans MS"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label2" align="center" ForeColor="Black" runat="server" Text="We Are Working On It." Font-Size="Large" Font-Bold="true" Font-Names="Comic Sans MS"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label3" align="center" ForeColor="Black" runat="server" Text="Check Back Soon!" Font-Size="Large" Font-Bold="true" Font-Names="Comic Sans MS"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

