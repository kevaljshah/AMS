<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="View_Faculty.aspx.cs" Inherits="Faculty_View_Faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table width="100%" cellpadding="10">
         <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_view_faculty" runat="server" Text="View Faculty" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="gv_view_faculty" runat="server" AllowPaging="true" OnPageIndexChanging="gv_view_faculty_PageIndexChanging" AutoGenerateColumns="false" Width="100%" PageSize="20"
                    PagerStyle-Font-Underline="false" PagerStyle-ForeColor="Black" PagerStyle-HorizontalAlign="Center" AlternatingRowStyle-BackColor="#ECECEC" AlternatingRowStyle-ForeColor="Black"
                    RowStyle-ForeColor="Black" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" AllowSorting="true" Style="margin-top: 5%">
                    <Columns>
                        <asp:HyperLinkField HeaderText="SAP ID" DataTextField="fct_sap_id" DataNavigateUrlFields="fct_id" DataNavigateUrlFormatString="~/Faculty/Faculty_Detail.aspx?fct_id={0}"
                            HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="Black" />
                        <asp:BoundField HeaderText="Name" DataField="fct_name" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Department" DataField="fct_department" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Designation" DataField="fct_designation" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Domain" DataField="fct_domain" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Current Research" DataField="fct_current_research" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Email ID" DataField="fct_email" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField HeaderText="Mobile No." DataField="fct_mobile" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#AE1213" ItemStyle-HorizontalAlign="Center" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

