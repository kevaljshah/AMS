<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Faculty_Detail.aspx.cs" Inherits="Faculty_Faculty_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" width="100%" cellspacing="20" cellpadding="0">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_faculty_detail" runat="server" Text="Faculty Detail" CssClass="page_header"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <table style="width: 100%;">
                    <tr>
                        <td width="20%">
                            <asp:Label ID="lbl_name_val" runat="server" Font-Size="XX-Large"></asp:Label>
                        </td>
                        <td width="80%">
                            <asp:Image ID="profile_image" runat="server" Style="height: auto; width: auto; max-height: 150px; max-width: 150px;" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table id="Table2" runat="server" width="100%" cellspacing="20" cellpadding="0">
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_sap_id" runat="server" Text="SAP ID :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_sap_id_val" runat="server" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_department" runat="server" Text="Department :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_department_val" runat="server" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_designation" runat="server" Text="Designation :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_designation_val" runat="server" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="table_headercell">
                <asp:Label ID="lbl_area_of_interest" runat="server" Text="Area of Interest :"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" cellspacing="20" cellpadding="0">
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_domain" runat="server" Text="Domain :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_domain_val" runat="server" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_current_research" runat="server" Text="Current Research :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_current_research_val" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="table_headercell">
                <asp:Label ID="lbl_cd" runat="server" Text="Contact Details :"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" cellspacing="20" cellpadding="0">
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_email" runat="server" Text="Email :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_email_val" runat="server" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_mobile" runat="server" Text="Mobile :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_mobile_val" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btn_back" runat="server" Text="Back" OnClick="btn_back_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

