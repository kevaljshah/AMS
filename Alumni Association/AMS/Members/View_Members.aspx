<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="View_Members.aspx.cs" Inherits="Members_View_Members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table width="100%" cellpadding="10">
        <tr>
            <td align="center">
                <asp:GridView ID="gv_view_members" runat="server" AllowPaging="true" OnPageIndexChanging="gv_view_members_PageIndexChanging" AutoGenerateColumns="false" Width="100%" PageSize="20"
                    PagerStyle-Font-Underline="false" PagerStyle-ForeColor="Black" PagerStyle-HorizontalAlign="Center" AlternatingRowStyle-BackColor="#ECECEC" AlternatingRowStyle-ForeColor="Black"
                    RowStyle-ForeColor="Black" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" AllowSorting="true" Style="margin-top: 5%">
                    <Columns>
                        <asp:HyperLinkField HeaderText="Gr No" DataTextField="std_gr_no" DataNavigateUrlFields="std_id" DataNavigateUrlFormatString="~/Members/Member_Detail.aspx?std_id={0}"
                            HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="Black" />
                        <asp:BoundField HeaderText="First Name" DataField="std_first_name" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Middle Name" DataField="std_middle_name" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Last Name" DataField="std_last_name" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Roll No" DataField="std_roll_no" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Division" DataField="std_division" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Program" DataField="std_program" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Stream" DataField="std_stream" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Campus" DataField="std_campus" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Passin Year" DataField="std_passing_year" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Email ID" DataField="std_email" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Mobile No" DataField="std_mobile_no" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>

</asp:Content>

