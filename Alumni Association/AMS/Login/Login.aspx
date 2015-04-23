<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table3" runat="server" align="center" cellpadding="30" cellspacing="0" width="100%" style="margin-top: 5%;">
        <tr>
            <td width="60%" align="right">
                <asp:Image ID="img_front_page" runat="server" Height="500px" Width="700px" ImageUrl="~/images/front_page_pic.png" Style="height: auto; width: auto; max-height: 500px; max-width: 700px;" />
            </td>
            <td width="40%" align="left">
                <table id="Table4" runat="server" width="60%" cellpadding="5" cellspacing="1">
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Label ID="Label1" ForeColor="#AE1213" runat="server" Text="Alumni Login" Font-Size="X-Large">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="50%">
                            <asp:Label ID="lbl_usnm" runat="server" Text="Username :"></asp:Label>
                        </td>
                        <td align="left" width="50%">
                            <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="50%">
                            <asp:Label ID="lbl_passwword" runat="server" Text="Password :"></asp:Label>
                        </td>
                        <td align="left" width="50%">
                            <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:CheckBox ID="ckb_remember" runat="server" Text="Remember Me" />
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="lb_need_help" runat="server" Text="Need Help?" ForeColor="Black" Font-Underline="false" PostBackUrl="~/Forgot/Forgot_Home.aspx" CausesValidation="false"></asp:LinkButton>
                        </td>
                    </tr>
                    <tr style="height: 50px;">
                        <td align="center" colspan="2" valign="bottom">
                            <asp:Button ID="btn_login" runat="server" Text="Login" Width="100px" OnClick="btn_login_Click" CausesValidation="true" />
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

