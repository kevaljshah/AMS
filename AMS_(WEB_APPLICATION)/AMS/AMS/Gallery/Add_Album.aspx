<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Album.aspx.cs" Inherits="Gallery_Add_Album" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" width="100%" cellspacing="20" cellpadding="0">
        <tr align="left">
            <td class="table_headercell">
                <asp:Label ID="lbl_add_album" runat="server" Text="Add Album:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%" align="center">
                <asp:Panel ID="pn_add_album" DefaultButton="btn_add_album" runat="server">
                    <table id="Table2" runat="server" cellpadding="10" cellspacing="0" width="50%">
                        <tr>
                            <td align="right" width="40%">
                                <asp:Label ID="lbl_album_name" runat="server" Text="Album Name :"></asp:Label>
                            </td>
                            <td align="left" width="60%">
                                <asp:TextBox ID="txt_album_name" runat="server" ToolTip="Album Name" MaxLength="50"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_album_name" runat="server" TargetControlID="txt_album_name" WatermarkCssClass="textboxwatermark" WatermarkText="Sattva"></asp:TextBoxWatermarkExtender>
                                <asp:RequiredFieldValidator ID="rfv_album_name" runat="server" ErrorMessage="*Required" ControlToValidate="txt_album_name" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_add_album"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="40%">
                                <asp:Label ID="lbl_album_visibility" runat="server" Text="Album Visibility :"></asp:Label>
                            </td>
                            <td align="left" width="60%">
                                <asp:DropDownList ID="ddl_album_visibility" runat="server" ToolTip="Album Visibility" ValidationGroup="vg_add_album"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfv_album_visibility" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_album_visibility" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_add_album"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" valign="top">
                                <asp:Label ID="lbl_add_album_error" runat="server" Visible="false" CssClass="error_label_red" Height="16px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center" valign="top">
                                <asp:Button ID="btn_add_album" Text="Add Album" runat="server" OnClick="btn_add_album_Click" ToolTip="Add Album" CausesValidation="true" ValidationGroup="vg_add_album" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
