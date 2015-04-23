<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Forgot_Password.aspx.cs" Inherits="Forgot_Forgot_Password" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
    <script language="javascript" src="../Script/Custom_JavaScript.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <asp:Panel ID="pn_forgot_username" runat="server" DefaultButton="btn_reset">
        <table style="width: 100%; margin-top: 8%">
            <tr>
                <td align="center">
                    <table id="Table1" runat="server" width="100%" cellpadding="5" cellspacing="0">
                        <tr align="center">
                            <td align="center" colspan="2">
                                <asp:Label ID="lbl_reset_password" ForeColor="#AE1213" runat="server" Text="Reset Password" Font-Size="X-Large"></asp:Label>
                            </td>
                        </tr>
                        <%--<tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lbl_mailed_password" runat="server" Text="Mailed Password : "></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <input id="txt_mailed_password" type="password" maxlength="50" runat="server" placeholder="Password" class="textboxwatermark_password" />
                                <asp:TextBox ID="txt_mailed_password" runat="server" ToolTip="Mailed Password" MaxLength="50" OnPreRender="txt_password_PreRender"></asp:TextBox>
                                <asp:Label ID="lbl_invald_password" runat="server" Text="*Invalid Passowrd" Visible="false" CssClass="error_label_red"></asp:Label>
                                <asp:RequiredFieldValidator ID="rfv_username" runat="server" ErrorMessage="*Required" ControlToValidate="txt_mailed_password" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                <asp:TextBoxWatermarkExtender ID="wm_mailed_password" runat="server" TargetControlID="txt_mailed_password" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            </td>
                        </tr>--%>
                        <tr height="45px" valign="top">
                            <td align="right" width="50%">
                                <asp:Label ID="lbl_new_password" runat="server" Text="New Password : "></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <input id="txt_new_password" type="password" maxlength="50" runat="server" placeholder="Password" class="textboxwatermark_password" />
                                <%--<asp:TextBox ID="txt_new_password" runat="server" MaxLength="50" ToolTip="New Password" OnPreRender="txt_password_PreRender"></asp:TextBox>--%>
                                <%--<asp:PasswordStrength ID="ps_password" runat="server"
                                    TargetControlID="txt_new_password"
                                    DisplayPosition="BelowLeft"
                                    StrengthIndicatorType="Text"
                                    PreferredPasswordLength="10"
                                    PrefixText="Strength:"
                                    MinimumNumericCharacters="1"
                                    MinimumSymbolCharacters="1"
                                    RequiresUpperAndLowerCaseCharacters="false"
                                    TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent"
                                    CalculationWeightings="50;15;15;20" TextCssClass="passwordstrength_text" />--%>
                                <asp:RegularExpressionValidator ID="rev_new_password" runat="server" ControlToValidate="txt_new_password" Display="Dynamic" CssClass="error_label_red" ErrorMessage="*Minimum Password Length is 8" ValidationExpression="^.{8,50}$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="rfv_new_password" runat="server" ErrorMessage="*Required" ControlToValidate="txt_new_password" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                <%--<asp:TextBoxWatermarkExtender ID="wm_new_password" runat="server" TargetControlID="txt_new_password" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>--%>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="50%">
                                <asp:Label ID="lbl_confirm_password" runat="server" Text="Confirm Password :" Width="165"></asp:Label>
                            </td>
                            <td align="left" width="50%">
                                <input id="txt_confirm_password" type="password" maxlength="50" runat="server" placeholder="Password" class="textboxwatermark_password" />
                                <%--<asp:TextBox ID="txt_confirm_password" runat="server" ToolTip="Confirm Password" MaxLength="50" OnPreRender="txt_password_PreRender"></asp:TextBox>--%>
                                <asp:RequiredFieldValidator ID="rfv_confirm_password" runat="server" ErrorMessage="Password Mismatch" ControlToValidate="txt_confirm_password" Display="Dynamic" CssClass="error_label_orange"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="compare_password" runat="server" ErrorMessage="Password Mismatch" Display="Dynamic" CssClass="error_label_orange" ControlToCompare="txt_new_password" ControlToValidate="txt_confirm_password"></asp:CompareValidator>
                                <%--<asp:TextBoxWatermarkExtender ID="wm_confirm_password" runat="server" TargetControlID="txt_confirm_password" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>--%>
                            </td>
                        </tr>
                        <tr height="50px" align="center" valign="bottom">
                            <td width="50%" align="right">
                                <asp:Button ID="btn_skip" runat="server" Text="Skip" Width="100px" CausesValidation="false" OnClick="btn_skip_Click" ToolTip="Skip" />
                            </td>
                            <td align="left" width="50%">
                                <asp:Button ID="btn_reset" runat="server" Text="Reset" Width="100px" CausesValidation="true" OnClick="btn_reset_Click" ToolTip="Reset" Style="margin-left: 3%;" />
                                <asp:Label ID="lbl_error" runat="server" CssClass="error_label_red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
