<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="View_Event.aspx.cs" Inherits="Events_View_Event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table width="100%" cellspacing="20" cellpadding="0" style="margin-top: 5%">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbb_view_events" runat="server" Text="Events" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table id="tbl_grid" runat="server" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="150px">
                            <asp:LinkButton ID="lb_upcoming_events" Text="Upcoming Events" runat="server" Font-Underline="false" ForeColor="#ECECEC" BackColor="#585A59" OnClick="lb_upcoming_events_Click" Style="border: 2px; border-color: #585A59; border-style: solid; border-top-left-radius: 10px; border-top-right-radius: 10px; padding-top: 5px; padding-left: 10px; padding-right: 10px; padding-bottom: 0px;" CausesValidation="false"></asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="lb_past_events" Text="Past Events" runat="server" Font-Underline="false" ForeColor="#ECECEC" BackColor="#585A59" OnClick="lb_past_events_Click" Style="border: 2px; border-color: #585A59; border-style: solid; border-top-left-radius: 10px; border-top-right-radius: 10px; padding-top: 5px; padding-left: 10px; padding-right: 10px; padding-bottom: 0px;" CausesValidation="false"></asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="top" colspan="2">
                            <asp:GridView ID="gv_view_upcoming_events" runat="server" AllowPaging="true" OnPageIndexChanging="gv_view_upcoming_events_PageIndexChanging" AutoGenerateColumns="false" Width="100%" PageSize="20"
                                PagerStyle-Font-Underline="false" PagerStyle-ForeColor="Black" PagerStyle-HorizontalAlign="Center" AlternatingRowStyle-BackColor="#ECECEC" AlternatingRowStyle-ForeColor="Black"
                                RowStyle-ForeColor="Black" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" AllowSorting="true" Visible="false">
                                <Columns>
                                    <asp:HyperLinkField HeaderText="Event Name" DataTextField="event_name" DataNavigateUrlFields="event_id" DataNavigateUrlFormatString="~/Events/Event_Detail.aspx?event_id={0}"
                                        HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="Black" />
                                    <asp:BoundField HeaderText="Committee Name" DataField="event_committee_name" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField HeaderText="Start Date" DataField="event_from_date" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField HeaderText="End Date" DataField="event_to_date" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField HeaderText="Timings" DataField="event_time" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="top" colspan="2">
                            <asp:GridView ID="gv_view_past_events" runat="server" AllowPaging="true" OnPageIndexChanging="gv_view_past_events_PageIndexChanging" AutoGenerateColumns="false" Width="100%" PageSize="20"
                                PagerStyle-Font-Underline="false" PagerStyle-ForeColor="Black" PagerStyle-HorizontalAlign="Center" AlternatingRowStyle-BackColor="#ECECEC" AlternatingRowStyle-ForeColor="Black"
                                RowStyle-ForeColor="Black" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" AllowSorting="true" Visible="false">
                                <Columns>
                                    <asp:HyperLinkField HeaderText="Event Name" DataTextField="event_name" DataNavigateUrlFields="event_id" DataNavigateUrlFormatString="~/Events/Event_Detail.aspx?event_id={0}"
                                        HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="Black" />
                                    <asp:BoundField HeaderText="Committee Name" DataField="event_committee_name" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField HeaderText="Start Date" DataField="event_from_date" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField HeaderText="End Date" DataField="event_to_date" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField HeaderText="Timings" DataField="event_time" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

