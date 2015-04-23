<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="View_Event.aspx.cs" Inherits="Events_View_Event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <asp:Button ID="Button1" runat="server" Text="Back" OnClick="btn_back_Click" style="background-color:#AE1213;color:white;" Width="100%" />
    <table width="100%" cellpadding="0" cellspacing="0" style="margin-top: 5%">
      
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0" style="margin-left: 1%;">
                    <tr>
                        <td>
                            <asp:LinkButton ID="lb_upcoming_events" Text="Upcoming Events" runat="server" Font-Underline="false" ForeColor="#ECECEC" BackColor="#585A59" OnClick="lb_upcoming_events_Click" Style="border: 2px; border-color: #585A59; border-style: solid; border-top-left-radius: 10px; border-top-right-radius: 10px; padding-top: 5px; padding-left: 10px; padding-right: 10px; padding-bottom: 0px;" CausesValidation="false"></asp:LinkButton>
                        </td>
                        <td width="3px"></td>
                        <td>
                            <asp:LinkButton ID="lb_past_events" Text="Past Events" runat="server" Font-Underline="false" ForeColor="#ECECEC" BackColor="#585A59" OnClick="lb_past_events_Click" Style="border: 2px; border-color: #585A59; border-style: solid; border-top-left-radius: 10px; border-top-right-radius: 10px; padding-top: 5px; padding-left: 10px; padding-right: 10px; padding-bottom: 0px;" CausesValidation="false"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
        </tr>
        <tr>
            <td align="center" valign="top">
                <asp:GridView ID="gv_view_upcoming_events" runat="server" AllowPaging="true" OnPageIndexChanging="gv_view_upcoming_events_PageIndexChanging" AutoGenerateColumns="false" Width="98%" PageSize="20"
                    PagerStyle-Font-Underline="false" PagerStyle-ForeColor="Black" PagerStyle-HorizontalAlign="Center" AlternatingRowStyle-BackColor="#ECECEC" AlternatingRowStyle-ForeColor="Black"
                    RowStyle-ForeColor="Black" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" AllowSorting="true" Visible="false">
                    <Columns>
                        <asp:HyperLinkField HeaderText="Event Name" DataTextField="event_name" DataNavigateUrlFields="event_id" DataNavigateUrlFormatString="~/mobile/Events/Event_Detail.aspx?event_id={0}"
                            HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="Black" />
                        
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top">
                <asp:GridView ID="gv_view_past_events" runat="server" AllowPaging="true" OnPageIndexChanging="gv_view_past_events_PageIndexChanging" AutoGenerateColumns="false" Width="100%" PageSize="20"
                    PagerStyle-Font-Underline="false" PagerStyle-ForeColor="Black" PagerStyle-HorizontalAlign="Center" AlternatingRowStyle-BackColor="#ECECEC" AlternatingRowStyle-ForeColor="Black"
                    RowStyle-ForeColor="Black" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" AllowSorting="true" Visible="false">
                    <Columns>
                        <asp:HyperLinkField HeaderText="Event Name" DataTextField="event_name" DataNavigateUrlFields="event_id" DataNavigateUrlFormatString="~/mobile/Events/Event_Detail.aspx?event_id={0}"
                            HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="Black" />
                        
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                    <asp:Button ID="Button2" runat="server" Text="Back" OnClick="btn_back_Click" style="background-color:#AE1213;color:white;" Width="100%" />
            </td>
        </tr>
            </table>

</asp:Content>

