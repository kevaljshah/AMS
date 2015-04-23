<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Change_Profile_Image.aspx.cs" Inherits="Members_Add_Member" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" width="100%" cellspacing="20" cellpadding="0">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_change_profile_image" runat="server" Text="Change Profile Image" CssClass="page_header"></asp:Label>
             <asp:Button ID="Button1" runat="server" Text="Back" CausesValidation="false" ToolTip="Upload" OnClick="btn_back_Click"  style="background-color:#AE1213;color:white;" />
            </td>
        </tr>
        <tr>
            <td style="text-align:left">
                <table id="Table3" runat="server" width="50%" cellpadding="5" cellspacing="0">
                    <tr>
                        <td align="center">
                            <asp:Image ID="img_profile_image" runat="server" Height="150px" Width="150px" ToolTip="Profile Image" AlternateText="Profile Image" Style="height: auto; width: auto; max-height: 150px; max-width: 150px;" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:FileUpload ID="fu_profile_image" runat="server" AllowMultiple="false" ToolTip="Choose a picture" TabIndex="1" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:RegularExpressionValidator ID="rev_profile_image" runat="server" ErrorMessage="Only picture files are allowed!" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.gif|.GIF|.jpg|.JPG|.jpeg|.JPEG)$" ControlToValidate="fu_profile_image" Display="Dynamic" CssClass="error_label_red"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="rfv_profile" runat="server" ErrorMessage="Select your profile picture!" ControlToValidate="fu_profile_image" Display="Dynamic" ForeColor="#AE1213" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Button ID="btn_remove" runat="server" Text="Remove" CausesValidation="false" ToolTip="Remove" TabIndex="3" OnClick="btn_remove_Click" style="background-color:#AE1213;color:white;" Width="100%"/>
                            </td>
                       </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btn_upload" runat="server" Text="Upload" CausesValidation="true" ToolTip="Upload" OnClick="btn_upload_Click" TabIndex="2" style="background-color:#AE1213;color:white;" Width="100%" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="lbl_error" runat="server" CssClass="error_label_red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
