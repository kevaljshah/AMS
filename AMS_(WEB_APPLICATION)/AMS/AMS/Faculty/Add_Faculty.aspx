<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Faculty.aspx.cs" Inherits="Faculty_Add_Faculty" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="tbl_add_user" runat="server" width="100%" cellspacing="20" cellpadding="0" visible="true">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_add_faculty" runat="server" Text="Add Faculty" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr align="left">
            <td class="table_headercell">
                <asp:Label ID="lbl_faculty_details" runat="server" Text="Faculty Details:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%" align="center">
                <table id="Table2" runat="server" cellspacing="0" cellpadding="0" style="height: 50px;">
                    <tr style="height: 25px;">
                        <td align="right">
                            <asp:Label ID="lbl_name" runat="server" Text="Name :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_title" runat="server" Width="60" ToolTip="Title"></asp:DropDownList>
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
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_title" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_title" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
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
                <table id="Table4" runat="server" width="100%" cellpadding="10" cellspacing="0">
                    <tr>
                        <td align="right" width="50%">
                            <asp:Label ID="lbl_sap_id" runat="server" Text="SAP ID :"></asp:Label>
                        </td>
                        <td align="left" width="50%">
                            <asp:TextBox ID="txt_sap_id" runat="server" MaxLength="50" ToolTip="SAP ID"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_sap_id" runat="server" TargetControlID="txt_sap_id" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="rfv_sap_id" runat="server" ErrorMessage="*Required" ControlToValidate="txt_sap_id" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                            <%--<asp:RegularExpressionValidator ID="rev_sap_id" runat="server" ControlToValidate="txt_sap_id" Display="Dynamic" ErrorMessage="*Incorrect" CssClass="error_label_orange" ValidationExpression="^[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]$"></asp:RegularExpressionValidator>--%>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="50%">
                            <asp:Label ID="lbl_gender" runat="server" Text="Gender :"></asp:Label>
                        </td>
                        <td align="left" width="50%">
                            <asp:DropDownList ID="ddl_gender" runat="server" ToolTip="Gender"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_gender" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_gender" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="50%">
                            <asp:Label ID="lbl_department" runat="server" Text="Department :"></asp:Label>
                        </td>
                        <td align="left" width="50%">
                            <asp:DropDownList ID="ddl_department" runat="server" ToolTip="Department"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_department" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_department" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="50%">
                            <asp:Label ID="lbl_designation" runat="server" Text="Designation :"></asp:Label>
                        </td>
                        <td align="left" width="50%">
                            <asp:TextBox ID="txt_designation" runat="server" MaxLength="50" ToolTip="Designation"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_designnation" runat="server" ErrorMessage="*Required" ControlToValidate="txt_designation" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr align="left">
            <td class="table_headercell">
                <asp:Label ID="Label1" runat="server" Text="Area of Interest:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table id="Table6" runat="server" cellpadding="10" cellspacing="0" width="50%">
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_domain" runat="server" Text="Domain :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_domain" runat="server" MaxLength="50" ToolTip="Domain"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_current_research" runat="server" Text="Current Research :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_current_research" runat="server" MaxLength="50" ToolTip="Current Research"></asp:TextBox>
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
                            <asp:TextBox ID="txt_mobile" runat="server" MaxLength="50" ToolTip="Mobile"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_mobile" runat="server" TargetControlID="txt_mobile" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator ID="rev_mobile" runat="server" ControlToValidate="txt_mobile" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^[+]?(\d{10,15})$" CssClass="error_label_orange"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr align="center" style="border-bottom-style: solid; border-width: 1px; border-color: #585A59;">
            <td style="border-top-style: solid; border-width: 1px; border-color: #585A59; padding: 10px; padding-left: 20px; padding-right: 10px;">
                <asp:Button ID="btn_add" runat="server" Text="Add" OnClick="btn_add_Click" CausesValidation="true" />
                <asp:Label ID="lbl_error" runat="server" CssClass="error_label_red"></asp:Label>
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
