<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="View_Members.aspx.cs" Inherits="Members_View_Members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="tbl_grid_view" width="100%" cellpadding="10" runat="server">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_view_member" runat="server" Text="Alumni Members" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="gv_view_members" runat="server" AllowPaging="true" OnPageIndexChanging="gv_view_members_PageIndexChanging" AutoGenerateColumns="false" Width="100%" PageSize="20"
                    PagerStyle-Font-Underline="false" PagerStyle-ForeColor="Black" PagerStyle-HorizontalAlign="Center" AlternatingRowStyle-BackColor="#ECECEC" AlternatingRowStyle-ForeColor="Black"
                    RowStyle-ForeColor="Black" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" AllowSorting="false">
                    <HeaderStyle ForeColor="White" BackColor="#AE1213" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:HyperLinkField HeaderText="Gr No" DataTextField="std_gr_no" DataNavigateUrlFields="std_id" DataNavigateUrlFormatString="~/Members/Member_Detail.aspx?std_id={0}"
                            HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="Black" />
                        <asp:BoundField HeaderText="First Name" DataField="std_first_name" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Middle Name" DataField="std_middle_name" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Last Name" DataField="std_last_name" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Roll No" DataField="std_roll_no" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Division" DataField="std_division" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Program" DataField="std_program" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Stream" DataField="std_stream" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Campus" DataField="std_campus" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Passin Year" DataField="std_passing_year" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Email ID" DataField="std_email" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Mobile No" DataField="std_mobile_no" ItemStyle-HorizontalAlign="Center" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="btn_export_to_csv" runat="server" Text="Export to CSV" CausesValidation="false" Style="margin-right: 2%;" OnClick="btn_export_to_csv_Click" />
                <asp:Button ID="btn_back" Text="Back" runat="server" CausesValidation="false" OnClick="btn_back_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

