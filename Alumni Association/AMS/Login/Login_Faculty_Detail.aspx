<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Login_Faculty_Detail.aspx.cs" Inherits="Login_Login_Faculty_Detail" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" align="center" cellspacing="0" cellpadding="30" width="100%"  style="margin-top: 10%;">
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
                            <asp:Label ID="lbl_name_val" runat="server" Font-Bold="true" ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_domain" runat="server" Text="Domain :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_domain" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_domain" runat="server" ErrorMessage="*Required" ControlToValidate="txt_domain" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_current_research" runat="server" Text="Current Research :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_current_research" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_current_research" runat="server" ErrorMessage="*Required" ControlToValidate="txt_current_research" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_email" runat="server" Text="Email :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_email" runat="server" ErrorMessage="*Required" ControlToValidate="txt_email" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                            <asp:TextBoxWatermarkExtender ID="wm_email" runat="server" TargetControlID="txt_email" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="*Incorrect" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="40%">
                            <asp:Label ID="lbl_mobile" runat="server" Text="Mobile :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_mobile" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_mobile" runat="server" ErrorMessage="*Required" ControlToValidate="txt_mobile" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                            <asp:TextBoxWatermarkExtender ID="wm_mobile" runat="server" TargetControlID="txt_mobile" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator ID="rev_mobile" runat="server" ControlToValidate="txt_mobile" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^[+]?([0-9]*)$" ForeColor="#FF6600"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr align="center" style="border-bottom-style: solid; border-width: 1px; border-color: #585A59;">
                        <td colspan="2" align="center" valign="bottom" height="50px">
                            <asp:Button ID="btn_save" runat="server" Text="Save" Width="100px" CausesValidation="true" OnClick="btn_save_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_error" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

