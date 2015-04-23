<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Inbox_Message.aspx.cs" Inherits="Members_View_Members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table>
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_message_inbox" runat="server" Text="Message Inbox" CssClass="page_header"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Back" OnClick="btn_back_Click" style="background-color:#AE1213;color:white;" CausesValidation="false" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="gv_inbox_message" runat="server" AllowPaging="true" OnPageIndexChanging="gv_inbox_message_PageIndexChanging" AutoGenerateColumns="false" Width="100%" PageSize="20"
                    PagerStyle-Font-Underline="false" PagerStyle-ForeColor="Black" PagerStyle-HorizontalAlign="Center" AlternatingRowStyle-BackColor="#ECECEC" AlternatingRowStyle-ForeColor="Black"
                    RowStyle-ForeColor="Black" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" AllowSorting="true" Style="margin-top: 2%">
                    <Columns>
                        <asp:HyperLinkField HeaderText="Message From" DataTextField="name" DataNavigateUrlFields="sap_id,page_name" DataNavigateUrlFormatString="~/mobile/Message/Reply_Message.aspx?sap_id={0}&page_name={1}"
                            HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="Black" HeaderStyle-Width="20%" />
                       
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lbl_no_message" runat="server" Font-Size="X-Large" ForeColor="#AE1213"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

