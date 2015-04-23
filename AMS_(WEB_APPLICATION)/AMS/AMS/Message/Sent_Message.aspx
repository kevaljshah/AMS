<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Sent_Message.aspx.cs" Inherits="Message_Sent_Message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table width="100%" cellpadding="10">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_sent_messages" runat="server" Text="Sent Messages" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="gv_sent_message" runat="server" AllowPaging="true" OnPageIndexChanging="gv_sent_message_PageIndexChanging" AutoGenerateColumns="false" Width="100%" PageSize="20"
                    PagerStyle-Font-Underline="false" PagerStyle-ForeColor="Black" PagerStyle-HorizontalAlign="Center" AlternatingRowStyle-BackColor="#ECECEC" AlternatingRowStyle-ForeColor="Black"
                    RowStyle-ForeColor="Black" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" AllowSorting="true" Style="margin-top: 2%">
                    <Columns>
                        <asp:HyperLinkField HeaderText="Sent To" DataTextField="name" DataNavigateUrlFields="sap_id,page_name" DataNavigateUrlFormatString="~/Message/Reply_Message.aspx?sap_id={0}&page_name={1}"
                            HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="Black" HeaderStyle-Width="20%" />
                        <asp:BoundField HeaderText="Message" DataField="msg_text" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Left" HeaderStyle-Width="60%" />
                        <asp:BoundField HeaderText="Time" DataField="msg_timestamp" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="20%" />
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

