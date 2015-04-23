<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Member.aspx.cs" Inherits="Members_Add_Member" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="tbl_add_user" runat="server" width="100%" cellspacing="20" cellpadding="0" visible="true">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_add_member" runat="server" Text="Add Member" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr align="left">
            <td class="table_headercell">
                <asp:Label ID="Label22" runat="server" Text="Student Details:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <table id="Table2" runat="server" cellspacing="0" cellpadding="0" style="height: 50px;">
                    <tr style="height: 25px;">
                        <td align="right">
                            <asp:Label ID="lbl_name" runat="server" Text="Name :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_first_name" runat="server" MaxLength="50" ToolTip="First Name"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_first_name" runat="server" TargetControlID="txt_first_name" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_middle_name" runat="server" MaxLength="50" ToolTip="Middle Name"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_middle_name" runat="server" TargetControlID="txt_middle_name" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_last_name" runat="server" MaxLength="50" ToolTip="Last Name"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_last_name" runat="server" TargetControlID="txt_last_name" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr valign="top" style="height: 25px;">
                        <td></td>
                        <td align="center">
                            <asp:RequiredFieldValidator ID="rfv_first_name" runat="server" ErrorMessage="*Required" ControlToValidate="txt_first_name" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rev_first_name" runat="server" Display="Dynamic" ControlToValidate="txt_first_name" ErrorMessage="*Incorrect" CssClass="error_label_orange" ValidationExpression="^([A-Z]*)([a-z]*)$"></asp:RegularExpressionValidator>
                        </td>
                        <td align="center">
                            <asp:RegularExpressionValidator ID="rev_middle_name" runat="server" ControlToValidate="txt_middle_name" ErrorMessage="*Incorrect" CssClass="error_label_orange" Display="Dynamic" ValidationExpression="^([A-Z]*)([a-z]*)$"></asp:RegularExpressionValidator>
                        </td>
                        <td align="center">
                            <asp:RequiredFieldValidator ID="rfv_last_name" runat="server" ErrorMessage="*Required" ControlToValidate="txt_last_name" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rev_last_name" runat="server" ControlToValidate="txt_last_name" ErrorMessage="*Incorrect" Display="Dynamic" CssClass="error_label_orange" ValidationExpression="^([A-Z]*)([a-z]*)$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table id="Table3" runat="server" width="100%" cellpadding="10">
                    <tr>
                        <td width="50%">
                            <table id="Table4" runat="server" width="100%" cellpadding="10" cellspacing="0">
                                <tr>
                                    <td align="right" width="40%">
                                        <asp:Label ID="lbl_gr_no" runat="server" Text="Gr No. :"></asp:Label>
                                    </td>
                                    <td align="left" width="60%">
                                        <asp:TextBox ID="txt_gr_no" runat="server" MaxLength="50" ToolTip="Gr No."></asp:TextBox>
                                        <asp:TextBoxWatermarkExtender ID="wm_gr_no" runat="server" TargetControlID="txt_gr_no" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                        <asp:RequiredFieldValidator ID="rfv_gr_no" runat="server" ErrorMessage="*Required" ControlToValidate="txt_gr_no" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="rev_gr_no" runat="server" ControlToValidate="txt_gr_no" Display="Dynamic" ErrorMessage="*Incorrect" CssClass="error_label_orange" ValidationExpression="^(\d{11})$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="40%">
                                        <asp:Label ID="lbl_gender" runat="server" Text="Gender :"></asp:Label>
                                    </td>
                                    <td align="left" width="60%">
                                        <asp:DropDownList ID="ddl_gender" runat="server" ToolTip="Gender"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfv_gender" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_gender" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="40%">
                                        <asp:Label ID="lbl_program" runat="server" Text="Program :"></asp:Label>
                                    </td>
                                    <td align="left" width="60%">
                                        <asp:DropDownList ID="ddl_program" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_program_SelectedIndexChanged" ToolTip="Program"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfv_program" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_program" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="40%">
                                        <asp:Label ID="lbl_passing_year" runat="server" Text="Passing Year :"></asp:Label>
                                    </td>
                                    <td align="left" width="60%">
                                        <asp:DropDownList ID="ddl_passing_year" runat="server" ToolTip="Passing Year"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfv_passing_year" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_passing_year" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="50%">
                            <table id="Table5" runat="server" width="100%" cellpadding="10" cellspacing="0">
                                <tr>
                                    <td align="right" width="40%">
                                        <asp:Label ID="lbl_roll_no" runat="server" Text="Roll No. :"></asp:Label>
                                    </td>
                                    <td align="left" width="60%">
                                        <asp:TextBox ID="txt_roll_no" runat="server" MaxLength="50" ToolTip="Roll No."></asp:TextBox>
                                        <asp:TextBoxWatermarkExtender ID="wm_roll_no" runat="server" TargetControlID="txt_roll_no" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                        <asp:RequiredFieldValidator ID="rfv_roll_no" runat="server" ErrorMessage="*Required" ControlToValidate="txt_roll_no" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="rev_roll_no" runat="server" ControlToValidate="txt_roll_no" Display="Dynamic" ErrorMessage="*Incorrect" CssClass="error_label_orange" ValidationExpression="^[A-Z]?[0-9][0-9][0-9]$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="40%">
                                        <asp:Label ID="lbl_division" runat="server" Text="Division :"></asp:Label>
                                    </td>
                                    <td align="left" width="60%">
                                        <asp:DropDownList ID="ddl_division" runat="server" ToolTip="Division"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfv_division" runat="server" ErrorMessage="*Required" ControlToValidate="ddl_division" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="40%">
                                        <asp:Label ID="lbl_stream" runat="server" Text="Stream :"></asp:Label>
                                    </td>
                                    <td align="left" width="60%">
                                        <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <asp:DropDownList ID="ddl_stream" runat="server" ToolTip="Stream"></asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="rfv_stream" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_stream" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="ddl_program" EventName="SelectedIndexChanged" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="40%">
                                        <asp:Label ID="lbl_campus" runat="server" Text="Campus :"></asp:Label>
                                    </td>
                                    <td align="left" width="60%">
                                        <asp:DropDownList ID="ddl_campus" runat="server" ToolTip="Campus"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfv_campus" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_campus" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr align="left">
            <td class="table_headercell">
                <asp:Label ID="Label1" runat="server" Text="Personal Details:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table id="Table6" runat="server" cellpadding="10" cellspacing="0" width="50%">
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_dob" runat="server" Text="BirthDate :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_dob" runat="server" Style="text-align: center;" ToolTip="BirthDate" MaxLength="50"></asp:TextBox>
                            <asp:CalendarExtender ID="ce_dob" runat="server" TargetControlID="txt_dob" Format="dd/MM/yyyy" DaysModeTitleFormat="dd/MM/yyyy" DefaultView="Years" TodaysDateFormat="dd/MM/yyyy"></asp:CalendarExtender>
                            <asp:TextBoxWatermarkExtender ID="wm_dob" runat="server" TargetControlID="txt_dob" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator ID="rev_dob" runat="server" ControlToValidate="txt_dob" Display="Dynamic" ErrorMessage="*Incorrect" CssClass="error_label_orange" ValidationExpression="^[0-3]?[0-9][/][0-1]?[0-9][/][0-9][0-9][0-9][0-9]$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_relation_status" runat="server" Text="Relationship Status :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:DropDownList ID="ddl_relationship_status" runat="server" ToolTip="Relationship Status"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_conpany_name" runat="server" Text="Company Name :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_company_name" runat="server" MaxLength="50" ToolTip="Company Name"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_company_name" runat="server" TargetControlID="txt_company_name" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_designation" runat="server" Text="Designation :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_designation" runat="server" MaxLength="50" ToolTip="Designation"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_designation" runat="server" TargetControlID="txt_designation" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr align="left">
            <td class="table_headercell">
                <asp:Label ID="Label15" runat="server" Text="Mailing Address:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table id="Table8" runat="server" cellpadding="10" cellspacing="0" width="50%">
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_country" runat="server" Text="Country :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:DropDownList ID="ddl_country" runat="server" OnSelectedIndexChanged="ddl_country_SelectedIndexChanged" AutoPostBack="true" ToolTip="Country"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_line1" runat="server" Text="Address Line1 :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_line1" runat="server" MaxLength="50" ToolTip="Address Line"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_line1" runat="server" TargetControlID="txt_line1" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_line2" runat="server" Text="Address Line2 :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_line2" runat="server" MaxLength="50" ToolTip="Address Line"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_line2" runat="server" TargetControlID="txt_line2" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_city" runat="server" Text="City :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_city" runat="server" MaxLength="50" ToolTip="City"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_city" runat="server" TargetControlID="txt_city" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_state" runat="server" Text="State/Province :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_state" runat="server" MaxLength="50" ToolTip="State/Province"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_state" runat="server" TargetControlID="txt_state" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_pincode" runat="server" Text="Zip/Postal Code :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_pincode" runat="server" MaxLength="50" ToolTip="Zip/Postal Code"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_pincode" runat="server" TargetControlID="txt_pincode" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator ID="rev_pincode" runat="server" ControlToValidate="txt_pincode" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^([0-9]*)$" CssClass="error_label_orange"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr align="left">
            <td class="table_headercell">
                <asp:Label ID="Label11" runat="server" Text="Contact Details:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table id="Table7" runat="server" cellpadding="10" cellspacing="0" width="50%">
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_email" runat="server" Text="Email :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_email" runat="server" MaxLength="50" ToolTip="Email"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_email" runat="server" TargetControlID="txt_email" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="*Incorrect" CssClass="error_label_orange" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_mobile" runat="server" Text="Mobile :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:UpdatePanel ID="up_country" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:TextBox ID="txt_country_code" runat="server" Width="40px" ToolTip="Country Code" MaxLength="5"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="rev_country_code" runat="server" ControlToValidate="txt_country_code" Display="Dynamic" ErrorMessage="*" ValidationExpression="^(\d{1,4})$" CssClass="error_label_orange"></asp:RegularExpressionValidator>
                                    <asp:Label ID="lbl_country_code" runat="server" Text="-"></asp:Label>
                                    <asp:TextBoxWatermarkExtender ID="wm_country_code" runat="server" TargetControlID="txt_country_code" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:TextBox ID="txt_mobile" runat="server" Width="80px" ToolTip="Mobile" MaxLength="50"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_mobile" runat="server" TargetControlID="txt_mobile" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RegularExpressionValidator ID="rev_mobile" runat="server" ControlToValidate="txt_mobile" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^(\d{10})$" CssClass="error_label_orange"></asp:RegularExpressionValidator>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="ddl_country" EventName="SelectedIndexChanged" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_landline" runat="server" Text="Landline :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_landline" runat="server" MaxLength="50" ToolTip="Landline"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_landline" runat="server" TargetControlID="txt_landline" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator ID="rev_landline" runat="server" ControlToValidate="txt_landline" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^[+]?([0-9]*)$" CssClass="error_label_orange"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr align="center" style="border-bottom-style: solid; border-width: 1px; border-color: #585A59;">
            <td style="border-top-style: solid; border-width: 1px; border-color: #585A59; padding: 10px; padding-left: 20px; padding-right: 10px;">
                <asp:Button ID="btn_add" runat="server" Text="Save" OnClick="btn_add_Click" ToolTip="Save" />
                <asp:Label ID="lbl_error" runat="server" CssClass="error_label_red" Visible="false"></asp:Label>
            </td>
        </tr>
    </table>
    <table id="tbl_user_added" runat="server" width="100%" cellpadding="0" visible="false">
        <tr>
            <td align="right">
                <asp:Image ID="img_done" runat="server" Style="width: 200px" ImageUrl="~/images/done.jpg" />
            </td>
            <td>
                <asp:Label ID="lbl_msg" Text="New Member Has Been Added!" ForeColor="#AE1213" runat="server" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btn_back_done" runat="server" Text="Back" OnClick="btn_back_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
