<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
    <script language="javascript" type="text/javascript" src="../Script/Custom_JavaScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table3" runat="server" align="center" cellpadding="30" cellspacing="0" width="100%" style="margin-top: 5%;">
        <tr>
            <td width="60%" align="right">
                <asp:Image ID="img_front_page" runat="server" Height="500px" Width="700px" ImageUrl="~/images/front_page_pic.png" Style="height: auto; width: auto; max-height: 500px; max-width: 700px;" />
            </td>
            <td width="40%" align="left">
                <table id="Table4" runat="server" width="60%" cellpadding="2" cellspacing="0">
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Label ID="Label1" ForeColor="#AE1213" runat="server" Text="Alumni Login" Font-Size="X-Large">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" width="50%" colspan="2">
                            <asp:TextBox ID="txt_username" runat="server" ToolTip="Username"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_username" runat="server" TargetControlID="txt_username" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" width="50%">
                            <input id="txt_password" type="password" maxlength="50" runat="server" placeholder="Password" class="textboxwatermark_password" />
                            <%--<asp:TextBox ID="txt_password" runat="server" ToolTip="Password" OnPreRender="txt_password_PreRender"></asp:TextBox>--%>
                            <%--<asp:TextBoxWatermarkExtender ID="wm_password" runat="server" TargetControlID="txt_password" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>--%>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" valign="top">
                            <asp:Label ID="lbl_error" runat="server" CssClass="error_label_red " Height="16px" Visible="false"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" valign="bottom">
                            <asp:Button ID="btn_login" runat="server" Text="Login" Width="100px" OnClick="btn_login_Click" CausesValidation="true" ToolTip="Login" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:CheckBox ID="ckb_remember" runat="server" Text="Remember Me" Font-Size="Smaller" ToolTip="Remember Me" />
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="lb_need_help" runat="server" Text="Need Help?" ForeColor="Black" Font-Underline="false" PostBackUrl="~/Forgot/Forgot_Home.aspx" CausesValidation="false" Font-Size="Smaller" ToolTip="Help Me"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

