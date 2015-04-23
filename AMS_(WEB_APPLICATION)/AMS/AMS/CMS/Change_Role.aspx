<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Change_Role.aspx.cs" Inherits="CMS_Change_Role" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
    <script src="../Script/Custom_JavaScript.js" language="javascript" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table width="100%" cellspacing="20" cellpadding="0">
         <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_change_role" runat="server" Text="Change Role" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left">
                <table width="50%">
                    <colgroup>
                        <col width="30%" />
                        <col width="70%" />
                    </colgroup>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_search_user_role_id" runat="server" Text="Search:"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBoxWatermarkExtender ID="wm_change_role_sap_id" runat="server" TargetControlID="txt_change_role_sap_id" WatermarkCssClass="textboxwatermark_left" WatermarkText="Name/SAP ID"></asp:TextBoxWatermarkExtender>
                            <asp:AutoCompleteExtender ID="ace_change_role_sap_id" runat="server" TargetControlID="txt_change_role_sap_id" EnableCaching="true"
                                ServiceMethod="GetDetails" ShowOnlyCurrentWordInCompletionListItem="true" UseContextKey="True" MinimumPrefixLength="1"
                                FirstRowSelected="true" CompletionInterval="500" OnClientItemSelected="ace_change_role_sap_id_selected">
                            </asp:AutoCompleteExtender>
                            <asp:TextBox ID="txt_change_role_sap_id" runat="server" OnTextChanged="txt_change_role_sap_id_TextChanged" AutoPostBack="true"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_change_role_sap_id" runat="server" ControlToValidate="txt_change_role_sap_id" Text="*Required" CssClass="error_label_orange"></asp:RequiredFieldValidator>
                            <asp:HiddenField ID="hf_change_role_sap_id" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_select_role" runat="server" Text="Select Role:"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddl_select_role" runat="server" ToolTip="Select Role"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_select_role" runat="server" ControlToValidate="ddl_select_role" Text="*Invalid" CssClass="error_label_orange"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr height="40px" valign="bottom">
                        <td></td>
                        <td>
                            <asp:Button ID="btn_change_role" Text="Change Role" runat="server" Style="margin-left: 20px;" CausesValidation="true" OnClick="btn_change_role_Click" />
                            <asp:Label ID="lbl_error" runat="server" CssClass="error_label_red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

</asp:Content>

