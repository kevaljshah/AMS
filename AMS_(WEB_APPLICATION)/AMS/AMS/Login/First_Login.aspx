<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="First_Login.aspx.cs" Inherits="Login_First_Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
    <script language="javascript" src="../Script/Custom_JavaScript.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <asp:Panel ID="pn_first_login" runat="server" DefaultButton="btn_save">
        <table id="Table1" runat="server" align="center" cellspacing="0" cellpadding="30" width="100%" style="margin-top: 10%;">
            <tr>
                <td width="50%" align="right">
                    <table id="msg_table" cellpadding="5" cellspacing="0" width="50%" style="text-align: left;">
                        <tr>
                            <td>
                                <asp:Label ID="lbl_msg_title" runat="server" Text="Welcome!" ForeColor="#AE1213" Font-Size="XX-Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_msgl1" runat="server" Text="You Logged In For The First Time." Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_msgl2" runat="server" Text="We Recommend, You Change Your Username And Password" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_msgl3" runat="server" Text="You May Skip This Step, If You Wish" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="50%" align="left">
                    <table id="Table3" runat="server" width="100%" cellpadding="5" cellspacing="0">
                        <tr align="center">
                            <td align="left" colspan="2">
                                <asp:Label ID="lbl_first_login" ForeColor="#AE1213" runat="server" Text="First Time Login" Font-Size="X-Large" Style="margin-left: 20%;"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="30%">
                                <asp:Label ID="lbl_username" runat="server" Text="New Username : "></asp:Label>
                            </td>
                            <td align="left" width="70%">
                                <asp:TextBox ID="txt_username" runat="server" MaxLength="50" ToolTip="Username"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_username" runat="server" TargetControlID="txt_username" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                <asp:Label ID="lbl_username_exists" runat="server" Text="Username already Exists" Visible="false" CssClass="error_label_red" Width="210"></asp:Label>
                                <asp:RequiredFieldValidator ID="rfv_username" runat="server" ErrorMessage="*Required" ControlToValidate="txt_username" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rev_username" runat="server" ControlToValidate="txt_username" Display="Dynamic" CssClass="error_label_red" ErrorMessage="*Minimum Username Length is 5" ValidationExpression="^.{5,50}$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr height="45px" valign="top">
                            <td align="right" width="30%">
                                <asp:Label ID="lbl_password" runat="server" Text="New Password : "></asp:Label>
                            </td>
                            <td align="left" width="70%">
                                <asp:TextBox ID="txt_password" runat="server" ToolTip="Password" MaxLength="50" OnPreRender="txt_password_PreRender"></asp:TextBox>
                                <asp:PasswordStrength ID="ps_password" runat="server"
                                    TargetControlID="txt_password"
                                    DisplayPosition="BelowLeft"
                                    StrengthIndicatorType="Text"
                                    PreferredPasswordLength="8"
                                    PrefixText="Strength:"
                                    MinimumNumericCharacters="1"
                                    MinimumSymbolCharacters="1"
                                    RequiresUpperAndLowerCaseCharacters="false"
                                    TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent"
                                    CalculationWeightings="50;15;15;20" TextCssClass="passwordstrength_text" />
                                <asp:TextBoxWatermarkExtender ID="wm_password" runat="server" TargetControlID="txt_password" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                <asp:RegularExpressionValidator ID="rev_password" runat="server" ControlToValidate="txt_password" Display="Dynamic" CssClass="error_label_red" ErrorMessage="*Minimum Password Length is 8" ValidationExpression="^.{8,50}$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="rfv_password" runat="server" ErrorMessage="*Required" ControlToValidate="txt_password" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="30%">
                                <asp:Label ID="lbl_confirm_password" runat="server" Text="Confirm Password :" Width="165"></asp:Label>
                            </td>
                            <td align="left" width="70%">
                                <asp:TextBox ID="txt_confirm_password" runat="server" ToolTip="Confirm Password" MaxLength="50" OnPreRender="txt_password_PreRender"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_confirm_password" runat="server" TargetControlID="txt_confirm_password" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                <asp:RequiredFieldValidator ID="rfv_confirm_password" runat="server" ErrorMessage="Password Mismatch" ControlToValidate="txt_confirm_password" Display="Dynamic" CssClass="error_label_orange"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="compare_password" runat="server" ErrorMessage="Password Mismatch" Display="Dynamic"
                                    ForeColor="#FF6600" ControlToCompare="txt_password" ControlToValidate="txt_confirm_password" CssClass="error_label_orange" SetFocusOnError="True"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr height="50px" valign="bottom">
                            <td></td>
                            <td>
                                <asp:Button ID="btn_save" runat="server" Text="Save" Width="100px" CausesValidation="true" OnClick="btn_save_Click" ToolTip="Save" Style="margin-left: 5%;" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

