<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Login_Faculty_Detail.aspx.cs" Inherits="Login_Login_Faculty_Detail" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" align="center" cellspacing="0" cellpadding="30" width="100%" style="margin-top: 5%;">
        <tr>
            <td width="50%" align="right">
                <table id="msg_table" cellpadding="5" cellspacing="0" width="50%" style="text-align: left;">
                    <tr>
                        <td>
                            <asp:Label ID="lbl_msg_title" runat="server" Text="Tell Us More!" ForeColor="#AE1213" Font-Size="XX-Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_msgl1" runat="server" Text="We would love to know more about you." Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_msgl2" runat="server" Text="Fill in the details, such that your records are updated" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td width="50%" align="left">
                <table id="Table3" runat="server" width="80%" cellpadding="5" cellspacing="0">
                    <tr align="center">
                        <td align="center" colspan="2">
                            <asp:Label ID="lbl_details" ForeColor="#AE1213" runat="server" Text="Details" Font-Size="X-Large"></asp:Label>
                        </td>
                    </tr>
                    <tr style="height: 25px;">
                        <td align="right">
                            <asp:Label ID="lbl_name" runat="server" Text="Name :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_title" runat="server" Width="60" ToolTip="Title"></asp:DropDownList>
                            <asp:Label ID="lbl_name_val" runat="server" Font-Bold="true" ToolTip="Name"></asp:Label>
                            <asp:RequiredFieldValidator ID="rfv_title" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_title" Style="margin-left: 10px;" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_email" runat="server" Text="Email :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_email" runat="server" ToolTip="Email-ID" MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_email" runat="server" ErrorMessage="*Required" ControlToValidate="txt_email" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
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
                            <asp:RequiredFieldValidator ID="rfv_mobile" runat="server" ErrorMessage="*Required" ControlToValidate="txt_mobile" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
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
                            <asp:Label ID="lbl_department" runat="server" Text="Department :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:DropDownList ID="ddl_department" runat="server" ToolTip="Department"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_department" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_department" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_designation" runat="server" Text="Designation :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_designation" runat="server" ToolTip="Designation" MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_designnation" runat="server" ErrorMessage="*Required" ControlToValidate="txt_designation" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                            <asp:TextBoxWatermarkExtender ID="wm_designation" runat="server" TargetControlID="txt_designation" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_domain" runat="server" Text="Domain :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_domain" runat="server" ToolTip="Domain" MaxLength="50"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_domain" runat="server" TargetControlID="txt_domain" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="rfv_domain" runat="server" ErrorMessage="*Required" ControlToValidate="txt_domain" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_current_research" runat="server" Text="Current Research :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_current_research" runat="server" ToolTip="Current Research" MaxLength="50"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_current_research" runat="server" TargetControlID="txt_current_research" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="rfv_current_research" runat="server" ErrorMessage="*Required" ControlToValidate="txt_current_research" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" valign="top">
                            <asp:Label ID="lbl_error" runat="server" CssClass="error_label_red" Height="16px" Visible="false"></asp:Label>
                        </td>
                    </tr>
                    <tr align="center" style="border-bottom-style: solid; border-width: 1px; border-color: #585A59;">
                        <td colspan="2" align="center" valign="bottom" height="50px">
                            <asp:Button ID="btn_save" runat="server" Text="Save" Width="100px" CausesValidation="true" OnClick="btn_save_Click" ToolTip="Save" />

                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

