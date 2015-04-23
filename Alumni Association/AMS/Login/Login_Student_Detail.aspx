<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Login_Student_Detail.aspx.cs" Inherits="Login_Login_Student_Detail" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" align="center" cellspacing="0" cellpadding="30" width="100%">
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
                <table id="Table3" runat="server" width="0%" cellpadding="5" cellspacing="0">
                    <tr align="center">
                        <td></td>
                        <td align="left">
                            <asp:Label ID="lbl_details" ForeColor="#AE1213" runat="server" Text="Details" Font-Size="X-Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_name" runat="server" Text="Name :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:Label ID="lbl_name_val" runat="server" Font-Bold="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_gender" runat="server" Text="Gender :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_gender" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_gender" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_gender" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_email" runat="server" Text="Email :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_email" runat="server" TargetControlID="txt_email" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="rfv_email" runat="server" ErrorMessage="*Required" ControlToValidate="txt_email" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="*Incorrect" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_mobile" runat="server" Text="Mobile :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_mobile" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_mobile" runat="server" TargetControlID="txt_mobile" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="rfv_mobile" runat="server" ErrorMessage="*Required" ControlToValidate="txt_mobile" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rev_mobile" runat="server" ControlToValidate="txt_mobile" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^[+]?([0-9]*)$" ForeColor="#FF6600"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_landline" runat="server" Text="Landline :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_landline" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_landline" runat="server" TargetControlID="txt_landline" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="rfv_landline" runat="server" ErrorMessage="*Required" ControlToValidate="txt_landline" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rev_landline" runat="server" ControlToValidate="txt_landline" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^[+]?([0-9]*)$" ForeColor="#FF6600"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_dob" runat="server" Text="BirthDate :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_dob" runat="server" Style="text-align: center;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_dob" runat="server" ErrorMessage="*Required" ControlToValidate="txt_dob" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                            <asp:CalendarExtender ID="ce_dob" runat="server" TargetControlID="txt_dob"></asp:CalendarExtender>
                            <asp:TextBoxWatermarkExtender ID="wm_dob" runat="server" TargetControlID="txt_dob" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator ID="rev_dob" runat="server" ControlToValidate="txt_dob" Display="Dynamic" ErrorMessage="*Incorrect" ForeColor="#FF6600" ValidationExpression="^[0-1]?[0-9][/][0-3]?[0-9][/][0-9][0-9][0-9][0-9]$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_country" runat="server" Text="Counrty :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_country" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_country" runat="server" TargetControlID="txt_country" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="rfv_country" runat="server" ErrorMessage="*Required" ControlToValidate="txt_country" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_line1" runat="server" Text="Line1 :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_line1" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_line1" runat="server" TargetControlID="txt_line1" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="rfv_line1" runat="server" ErrorMessage="*Required" ControlToValidate="txt_line1" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_line2" runat="server" Text="Line2 :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_line2" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_line2" runat="server" TargetControlID="txt_line2" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="rfv_line2" runat="server" ErrorMessage="*Required" ControlToValidate="txt_line2" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_city" runat="server" Text="City :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_city" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_city" runat="server" TargetControlID="txt_city" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="rfv_city" runat="server" ErrorMessage="*Required" ControlToValidate="txt_city" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_state" runat="server" Text="State/Province :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_state" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_state" runat="server" TargetControlID="txt_state" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="rfv_state" runat="server" ErrorMessage="*Required" ControlToValidate="txt_state" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_pincode" runat="server" Text="Zip/Postal Code :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_pincode" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_pincode" runat="server" TargetControlID="txt_pincode" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="rfv_pincode" runat="server" ErrorMessage="*Required" ControlToValidate="txt_pincode" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rev_pincode" runat="server" ControlToValidate="txt_pincode" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^([0-9]*)$" ForeColor="#FF6600"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_relation_status" runat="server" Text="Relationship Status :" Width="172"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddl_relationship_status" runat="server"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_conpany_name" runat="server" Text="Company Name :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_company_name" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_company_name" runat="server" TargetControlID="txt_company_name" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="rfv_company_name" runat="server" ErrorMessage="*Required" ControlToValidate="txt_company_name" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_designation" runat="server" Text="Designation :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_designation" runat="server"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_designation" runat="server" TargetControlID="txt_designation" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator ID="rfv_designation" runat="server" ErrorMessage="*Required" ControlToValidate="txt_designation" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="left" valign="bottom" height="30px">
                            <asp:Button ID="btn_save" runat="server" Text="Save" Width="100px" CausesValidation="true" OnClick="btn_save_Click" />
                            <asp:Label ID="lbl_error" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

