<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="First_Login.aspx.cs" Inherits="Login_First_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
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
                <table id="Table3" runat="server" width="50%" cellpadding="5" cellspacing="0">
                    <tr align="center">
                        <td align="center" colspan="2">
                            <asp:Label ID="lbl_first_login" ForeColor="#AE1213" runat="server" Text="First Time Login" Font-Size="X-Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_username" runat="server" Text="New Username : "></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:Label ID="lbl_username_exists" runat="server" Text="Username already Exists" Visible="false" ForeColor="#AE1213" Width="210"></asp:Label>
                            <asp:RequiredFieldValidator ID="rfv_username" runat="server" ErrorMessage="*Required" ControlToValidate="txt_username" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_password" runat="server" Text="New Password : "></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="rfv_password" runat="server" ErrorMessage="*Required" ControlToValidate="txt_password" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_confirm_password" runat="server" Text="Confirm Password :" Width="165"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_confirm_password" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:CompareValidator ID="compare_password" runat="server" ErrorMessage="Password Mismatch" Display="Dynamic"
                                ForeColor="#FF6600" ControlToCompare="txt_password" ControlToValidate="txt_confirm_password"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr height="50px" align="center" valign="bottom">
                        <td>
                            <asp:Button ID="btn_save" runat="server" Text="Save" Width="100px" CausesValidation="true" OnClick="btn_save_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btn_skip" runat="server" Text="Skip" Width="100px" OnClick="btn_skip_Click" CausesValidation="false" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Label ID="lbl_error" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

