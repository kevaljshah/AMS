<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Login_Default_Page.aspx.cs" Inherits="CMS_Add_Login_Default_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table width="100%" cellspacing="20" cellpadding="0">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;" colspan="2">
                <asp:Label ID="lbl_set_login_default" runat="server" Text="Set Login Default" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="40%" align="right">
                <asp:Label ID="lbl_select_role" Text="Select Role:" runat="server"></asp:Label>
            </td>
            <td width="60%" align="left">
                <asp:DropDownList ID="ddl_select_role" runat="server" ToolTip="Select Role" AutoPostBack="true" OnSelectedIndexChanged="ddl_select_role_SelectedIndexChanged"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv_select_role" runat="server" ControlToValidate="ddl_select_role" Text="*Invalid" CssClass="error_label_orange"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="40%" align="right">
                <asp:Label ID="lbl_select_default_login_page" Text="Select Default Login Page:" runat="server"></asp:Label>
            </td>
            <td width="60%" align="left">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
                    <ContentTemplate>
                        <asp:DropDownList ID="ddl_page_name" runat="server" ToolTip="Select Default Login Page"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfv_page_name" runat="server" ControlToValidate="ddl_page_name" Text="*Invalid" CssClass="error_label_orange"></asp:RequiredFieldValidator>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddl_select_role" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="border-top-style: solid; border-width: 1px; border-color: #585A59; padding: 10px; padding-left: 20px; padding-right: 10px;">
                <asp:Button ID="btn_login_assign_default" Text="Assign Login Default Page" runat="server" OnClick="btn_login_assign_default_Click" ToolTip="Assign Login Default Page" Style="margin-left: 38%;" />
            </td>
        </tr>
    </table>
</asp:Content>

