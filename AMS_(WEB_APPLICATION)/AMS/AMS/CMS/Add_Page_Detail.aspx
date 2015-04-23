<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Page_Detail.aspx.cs" Inherits="CMS_Add_Page_Detail" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
    <script src="../Script/Custom_JavaScript.js" language="javascript" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" width="100%" cellspacing="20" cellpadding="0">
         <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_add_new_page" runat="server" Text="Add New Page" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr align="left">
            <td class="table_headercell">
                <asp:Label ID="lbl_add_menu" runat="server" Text="Add Menu:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%" align="center">
                <asp:Panel ID="pn_add_menu" DefaultButton="btn_add_menu" runat="server">
                    <table id="Table2" runat="server" cellpadding="10" cellspacing="0" width="50%">
                        <tr>
                            <td align="right" width="40%">
                                <asp:Label ID="lbl_menu_name" runat="server" Text="Menu Name :"></asp:Label>
                            </td>
                            <td align="left" width="60%">
                                <asp:TextBox ID="txt_menu_name" runat="server" ToolTip="Menu Name" MaxLength="50"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_menu_name" runat="server" TargetControlID="txt_menu_name" WatermarkCssClass="textboxwatermark" WatermarkText="Home"></asp:TextBoxWatermarkExtender>
                                <asp:RequiredFieldValidator ID="rfv_menu_name" runat="server" ErrorMessage="*Required" ControlToValidate="txt_menu_name" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_add_menu"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="40%">
                                <asp:Label ID="lbl_menu_text" runat="server" Text="Menu Text :"></asp:Label>
                            </td>
                            <td align="left" width="60%">
                                <asp:TextBox ID="txt_menu_text" runat="server" ToolTip="Menu Text" MaxLength="50"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_menu_text" runat="server" TargetControlID="txt_menu_text" WatermarkCssClass="textboxwatermark" WatermarkText="Home"></asp:TextBoxWatermarkExtender>
                                <asp:RequiredFieldValidator ID="rfv_menu_text" runat="server" ErrorMessage="*Required" ControlToValidate="txt_menu_text" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_add_menu"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="40%">
                                <asp:Label ID="lbl_menu_visibility" runat="server" Text="Menu Visibility :"></asp:Label>
                            </td>
                            <td align="left" width="60%">
                                <asp:DropDownList ID="ddl_menu_visibility" runat="server" ToolTip="Menu Visibility" ValidationGroup="vg_add_menu"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfv_menu_visibility" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_menu_visibility" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_add_menu"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="40%">
                                <asp:Label ID="lbl_show_on_menu_bar" runat="server" Text="Show on Menu Bar :"></asp:Label>
                            </td>
                            <td align="left" width="60%">
                                <asp:DropDownList ID="ddl_show_on_menu_bar" runat="server" ToolTip="Show on Menu Bar" ValidationGroup="vg_add_menu"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfv_show_on_menu_bar" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_show_on_menu_bar" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_add_menu"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" valign="top">
                                <asp:Label ID="lbl_add_menu_error" runat="server" Visible="false" CssClass="error_label_red" Height="16px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center" valign="top">
                                <asp:Button ID="btn_add_menu" Text="Add Menu" runat="server" OnClick="btn_add_menu_Click" ToolTip="Add Menu" CausesValidation="true" ValidationGroup="vg_add_menu" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr align="left">
            <td class="table_headercell">
                <asp:Label ID="lbl_add_page_detail" runat="server" Text="Page Detail:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" width="100%">
                <asp:Panel ID="pn_add_page_detail" runat="server" DefaultButton="btn_add_page">
                    <table id="Table3" runat="server" cellpadding="10" cellspacing="0" width="50%">
                        <tr>
                            <td align="right" width="40%">
                                <asp:Label ID="lbl_page_menu_name" runat="server" Text="Menu Name"></asp:Label>
                            </td>
                            <td align="left" width="60%">
                                <asp:DropDownList ID="ddl_menu_name" runat="server" ToolTip="Menu Name" ValidationGroup="vg_page_detail"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfv_ddl_menu_name" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_menu_name" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_page_detail"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="40%">
                                <asp:Label ID="lbl_page_name" runat="server" Text="Page Name :"></asp:Label>
                            </td>
                            <td align="left" width="60%">
                                <asp:TextBox ID="txt_page_name" runat="server" ToolTip="Page Name" MaxLength="50" ValidationGroup="vg_page_detail"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_page_name" runat="server" ErrorMessage="*Required" ControlToValidate="txt_page_name" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_page_detail"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="40%">
                                <asp:Label ID="lbl_page_title" runat="server" Text="Page Title :"></asp:Label>
                            </td>
                            <td align="left" width="60%">
                                <asp:TextBox ID="txt_page_title" runat="server" ToolTip="Page Title" MaxLength="50" ValidationGroup="vg_page_detail"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_page_title" runat="server" ErrorMessage="*Required" ControlToValidate="txt_page_title" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_page_detail"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="40%">
                                <asp:Label ID="lbl_submenu_text" runat="server" Text="Submenu Text :"></asp:Label>
                            </td>
                            <td align="left" width="60%">
                                <asp:TextBox ID="txt_submenu_text" runat="server" ToolTip="Submenu Text" MaxLength="50" ValidationGroup="vg_page_detail"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_submenu_text" runat="server" ErrorMessage="*Required" ControlToValidate="txt_submenu_text" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_page_detail"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="40%">
                                <asp:Label ID="lbl_page_linked" runat="server" Text="Page Linked :"></asp:Label>
                            </td>
                            <td align="left" width="60%">
                                <asp:DropDownList ID="ddl_page_linked" runat="server" ToolTip="Is Page Linked" ValidationGroup="vg_page_detail"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfv_page_linked" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_page_linked" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_page_detail"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="40%">
                                <asp:Label ID="lbl_page_visible" runat="server" Text="Page Visibility :"></asp:Label>
                            </td>
                            <td align="left" width="60%">
                                <asp:DropDownList ID="ddl_visibility" runat="server" ToolTip="Page Visibility" ValidationGroup="vg_page_detail"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfv_visibility" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_visibility" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_page_detail"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" valign="top">
                                <asp:Label ID="lbl_add_page_error" runat="server" CssClass="error_label_red" Height="16px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="btn_add_page" runat="server" ToolTip="Add Page" Text="Add Page" OnClick="btn_add_page_Click" CausesValidation="true" ValidationGroup="vg_page_detail" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

