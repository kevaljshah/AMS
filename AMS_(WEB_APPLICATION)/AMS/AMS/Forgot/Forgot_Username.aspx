<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Forgot_Username.aspx.cs" Inherits="Forgot_Forgot_Username" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <asp:Panel ID="pn_forgot_username" runat="server" DefaultButton="btn_reset">
        <table style="width: 100%; margin-top: 8%">
            <tr>
                <td align="center">
                    <table id="Table1" runat="server" width="100%" cellpadding="5" cellspacing="0">
                        <tr align="center">
                            <td align="center" colspan="2">
                                <asp:Label ID="lbl_reset_username" ForeColor="#AE1213" runat="server" Text="Reset Username" Font-Size="X-Large"></asp:Label>
                            </td>
                        </tr>
                        <%--<tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lbl_username" runat="server" Text="Mailed Username : "></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txt_mailed_username" runat="server" ToolTip="Mailed Username" MaxLength="50"></asp:TextBox>
                                <asp:Label ID="lbl_invald_username" runat="server" Text="*Invalid Username" Visible="false" CssClass="error_label_red"></asp:Label>
                                <asp:RequiredFieldValidator ID="rfv_username" runat="server" ErrorMessage="*Required" ControlToValidate="txt_mailed_username" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                <asp:TextBoxWatermarkExtender ID="wm_mailed_username" runat="server" TargetControlID="txt_mailed_username" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            </td>
                        </tr>--%>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lbl_new_username" runat="server" Text="New Username : "></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txt_new_username" runat="server" ToolTip="New Username" MaxLength="50"></asp:TextBox>
                                <asp:Label ID="lbl_user_exists" runat="server" Text="*Username Already Exists" Visible="false" CssClass="error_label_red"></asp:Label>
                                <asp:RequiredFieldValidator ID="rfv_password" runat="server" ErrorMessage="*Required" ControlToValidate="txt_new_username" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                <asp:TextBoxWatermarkExtender ID="wm_new_username" runat="server" TargetControlID="txt_new_username" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lbl_confirm_username" runat="server" Text="Confirm Username :"></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txt_confirm_username" runat="server" ToolTip="Confirm Username" MaxLength="50"></asp:TextBox>
                                <asp:CompareValidator ID="cv_username" runat="server" ErrorMessage="Username Mismatch" Display="Dynamic"
                                    CssClass="error_label_orange" ControlToCompare="txt_new_username" ControlToValidate="txt_confirm_username"></asp:CompareValidator>
                                <asp:TextBoxWatermarkExtender ID="wm_confirm_username" runat="server" TargetControlID="txt_confirm_username" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            </td>
                        </tr>
                        <tr height="50px" align="center" valign="bottom">
                            <td width="50%" align="right">
                                <asp:Button ID="btn_skip" runat="server" Text="Skip" Width="100px" CausesValidation="false" ToolTip="Skip" OnClick="btn_skip_Click" />
                            </td>
                            <td align="left" width="50%">
                                <asp:Button ID="btn_reset" runat="server" Text="Reset" Width="100px" CausesValidation="true" OnClick="btn_reset_Click" ToolTip="Reset" Style="margin-left: 3%;" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

