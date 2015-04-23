<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Login_Profile_Image.aspx.cs" Inherits="Login_Login_Profile_Image" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" align="center" cellspacing="0" cellpadding="0" width="100%">
        <tr>
                        <td>
                            <asp:Label ID="lbl_msg_title" runat="server" Text="Display Picture!" ForeColor="#AE1213" Font-Size="X-Large"></asp:Label>
                        </td>
                    </tr>
        <tr>
                        <td>
                            <asp:Label ID="lbl_msgl1" runat="server" Text="Upload A Recent Picture Of Yours." Font-Size="Medium"></asp:Label>
                        </td>
                    </tr>
       
         <tr>
                        <td style="text-align:left">
                            <asp:Label ID="lbl_upload_your_pic" ForeColor="#AE1213" runat="server" Text="Upload Your Pic" Font-Size="X-Large"></asp:Label>
                        </td>
                    </tr>
        <tr>
            <td>
                                            <asp:Image ID="img_profile_image" runat="server" Height="90px" Width="90px" />

            </td>
        </tr>
        <tr>
                        <td style="width:100%">
                            <asp:FileUpload ID="fu_profile_image" runat="server" AllowMultiple="false"  Width="96%"/>
                        </td>
                    </tr>
        <tr>
            <td>
                 <asp:RegularExpressionValidator ID="rev_profile_image" runat="server" ErrorMessage="Only picture files are allowed!" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.gif|.GIF|.jpg|.JPG|.jpeg|.JPEG)$" ControlToValidate="fu_profile_image" Display="Dynamic" CssClass="error_label_red"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="rfv_profile" runat="server" ErrorMessage="Select your profile picture!" ControlToValidate="fu_profile_image" Display="Dynamic" ForeColor="#AE1213" CssClass="error_label_red"></asp:RequiredFieldValidator>
            </td>
        </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btn_upload" runat="server" Text="Upload" OnClick="btn_upload_Click" Width="100%" style="background-color:#AE1213;color:white;"/>
                            </td>
                                </tr>
        <tr>
                            <td>
                            <asp:Button ID="btn_skip" runat="server" Width="100%" Text="Skip" style="background-color:#AE1213;color:white;" OnClick="btn_skip_Click" CausesValidation="false" />
                        </td>
                    </tr>
    </table>
</asp:Content>

