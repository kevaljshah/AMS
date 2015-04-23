<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Images.aspx.cs" Inherits="Gallery_Add_Images" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
    <script type="text/javascript">

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" width="100%" cellspacing="20" cellpadding="0">
        <tr align="left">
            <td class="table_headercell">
                <asp:Label ID="lbl_add_images" runat="server" Text="Add Images:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%" align="center">
                <table id="Table2" runat="server" cellpadding="10" cellspacing="0" width="100%">
                    <tr>
                        <td align="right" width="15%">
                            <asp:Label ID="lbl_album_name" runat="server" Text="Album Name :"></asp:Label>
                        </td>
                        <td align="left" width="85%">
                            <asp:HiddenField ID="hf_album_id" runat="server" />
                            <asp:DropDownList ID="ddl_album_name" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_album_name" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_album_name" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="15">
                            <asp:Label ID="lbl_select_images" runat="server" Text="Select Images:"></asp:Label>
                        </td>
                        <td align="left" width="85%">
                            <%--<asp:AjaxFileUpload ID="afu_images" runat="server" OnUploadComplete="afu_images_UploadComplete" AllowedFileTypes="gif,jpg,jpeg" />--%>
                            <asp:FileUpload ID="fu_image" runat="server" AllowMultiple="true" />
                            <%--<asp:RegularExpressionValidator ID="rev_image" runat="server" ErrorMessage="Only picture files are allowed!" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.gif|.GIF|.jpg|.JPG|.jpeg|.JPEG)$" ControlToValidate="fu_image" Display="Dynamic" CssClass="error_label_red"></asp:RegularExpressionValidator>--%>
                            <asp:RequiredFieldValidator ID="rfv_image" runat="server" ErrorMessage="Select your profile picture!" ControlToValidate="fu_image" Display="Dynamic" ForeColor="#AE1213" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only picture files are allowed!" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.gif|.GIF|.jpg|.JPG|.jpeg|.JPEG)$" ControlToValidate="fu_image" Display="Dynamic" CssClass="error_label_red"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btn_upload" runat="server" OnClick="btn_upload_Click" Text="Upload" Style="margin-left: 5%;" CausesValidation="true" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

</asp:Content>

