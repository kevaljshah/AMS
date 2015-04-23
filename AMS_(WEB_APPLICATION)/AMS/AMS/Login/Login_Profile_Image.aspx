<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Login_Profile_Image.aspx.cs" Inherits="Login_Login_Profile_Image" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
    <script language="javascript" src="../Script/Custom_JavaScript.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <asp:Panel ID="pn_login_profile_image" runat="server" DefaultButton="btn_upload">
        <table id="Table1" runat="server" align="center" cellspacing="0" cellpadding="30" width="100%">
            <tr>
                <td width="50%" align="right">
                    <table id="msg_table" cellpadding="5" cellspacing="0" width="50%" style="text-align: left;">
                        <tr>
                            <td>
                                <asp:Label ID="lbl_msg_title" runat="server" Text="Display Picture!" ForeColor="#AE1213" Font-Size="XX-Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_msgl1" runat="server" Text="You Love Your Picture! So Do We!" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_msgl2" runat="server" Text="Upload A Recent Picture Of Yours." Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="50%" align="left">
                    <table id="Table3" runat="server" width="50%" cellpadding="5" cellspacing="0">
                        <tr align="center">
                            <td align="center" colspan="2">
                                <asp:Label ID="lbl_upload_your_pic" ForeColor="#AE1213" runat="server" Text="Upload Your Pic" Font-Size="X-Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Image ID="img_profile_image" runat="server" Height="150px" Width="150px" ToolTip="Profile Image" AlternateText="Profile Image" Style="height: auto; width: auto; max-height: 150px; max-width: 150px;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:FileUpload ID="fu_profile_image" runat="server" AllowMultiple="false" ToolTip="Choose a picture" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:RegularExpressionValidator ID="rev_profile_image" runat="server" ErrorMessage="Only picture files are allowed!" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.gif|.GIF|.jpg|.JPG|.jpeg|.JPEG|.Png|.png)$" ControlToValidate="fu_profile_image" Display="Dynamic" CssClass="error_label_red"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="rfv_profile" runat="server" ErrorMessage="Select your profile picture!" ControlToValidate="fu_profile_image" Display="Dynamic" ForeColor="#AE1213" CssClass="error_label_red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Button ID="btn_upload" runat="server" Text="Upload" OnClick="btn_upload_Click" CausesValidation="true" ToolTip="Upload" />
                                <asp:Button ID="btn_skip" runat="server" Text="Skip" Style="margin-left: 10%;" OnClick="btn_skip_Click" CausesValidation="false" ToolTip="Skip" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
