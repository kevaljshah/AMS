<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Member_Detail.aspx.cs" Inherits="Members_Member_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" width="100%" cellspacing="20" cellpadding="0">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbb_member_detail" runat="server" Text="Member Details" CssClass="page_header"></asp:Label>
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
                            <asp:Image ID="profile_image" ImageUrl="~/images/Icon-user.png" runat="server" Width="150px" Height="150px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table runat="server" width="100%" cellspacing="20" cellpadding="0">
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_gr_no" runat="server" Text="Gr.No. :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_gr_no_val" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_roll_no" runat="server" Text="Roll No. :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_roll_no_val" runat="server" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_gender" runat="server" Text="Gender :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_gender_val" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_div" runat="server" Text="Division :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_div_value" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_program" runat="server" Text="Program :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_program_value" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_stream" runat="server" Text="Stream :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_stream_val" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_passing_year" runat="server" Text="Passing Year :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_passing_year_val" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_campus" runat="server" Text="Campus :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_campus_val" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="table_headercell">
                <asp:Label ID="lbl_personal_details" runat="server" Text="Personal Details :"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" cellspacing="20" cellpadding="0">
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_birthdate" runat="server" Text="Birth Date :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_birthdate_val" runat="server" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_relationship_status" runat="server" Text="Relationship Status :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_relationship_status_val" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_company_name" runat="server" Text="Company Name :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_company_name_val" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_designation" runat="server" Text="Designation :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_designation_val" runat="server" Font-Size="Large">
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
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_landline" runat="server" Text="Landline :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_landline_val" runat="server" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="table_headercell">
                <asp:Label ID="lbl_mailing_address" runat="server" Text="Mailing Address :"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" cellspacing="20" cellpadding="0">
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_country" runat="server" Text="Country :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_country_val" runat="server" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_address" runat="server" Text="Address :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_address_val" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_city" runat="server" Text="City :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_city_val" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_state" runat="server" Text="State/Province :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_state_val" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="left">
                            <asp:Label ID="lbl_pincode" runat="server" Text="Zip/Postal Code :" Font-Size="Large"></asp:Label>
                        </td>
                        <td width="80%" align="left">
                            <asp:Label ID="lbl_pincode_val" runat="server" Font-Size="Large">
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
