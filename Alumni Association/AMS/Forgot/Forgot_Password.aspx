<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Forgot_Password.aspx.cs" Inherits="Forgot_Forgot_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table style="width: 100%;">
        <tr>
            <td align="center">
                <table id="Table1" runat="server" width="100%" cellpadding="5" cellspacing="0">
                    <tr align="center">
                        <td align="center" colspan="2">
                            <asp:Label ID="lbl_reset_password" ForeColor="#AE1213" runat="server" Text="Reset Password" Font-Size="X-Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="50%">
                            <asp:Label ID="lbl_password" runat="server" Text="Mailed Password : "></asp:Label>
                        </td>
                        <td align="left" width="50%">
                            <asp:TextBox ID="txt_password" runat="server"></asp:TextBox>
                            <asp:Label ID="lbl_invald_password" runat="server" Text="Invalid Passowrd" Visible="false" ForeColor="#AE1213"></asp:Label>
                            <asp:RequiredFieldValidator ID="rfv_username" runat="server" ErrorMessage="*Required" ControlToValidate="txt_password" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="50%">
                            <asp:Label ID="lbl_new_password" runat="server" Text="New Password : "></asp:Label>
                        </td>
                        <td align="left" width="50%">
                            <asp:TextBox ID="txt_new_password" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_password" runat="server" ErrorMessage="*Required" ControlToValidate="txt_new_password" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="50%">
                            <asp:Label ID="lbl_confirm_password" runat="server" Text="Confirm Password :" Width="165"></asp:Label>
                        </td>
                        <td align="left" width="50%">
                            <asp:TextBox ID="txt_confirm_password" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="compare_password" runat="server" ErrorMessage="Password Mismatch" Display="Dynamic"
                                ForeColor="#FF6600" ControlToCompare="txt_password" ControlToValidate="txt_confirm_password"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr height="50px" align="center" valign="bottom">
                        <td align="center" colspan="2">
                            <asp:Button ID="btn_reset" runat="server" Text="Reset" Width="100px" CausesValidation="true" OnClick="btn_reset_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

