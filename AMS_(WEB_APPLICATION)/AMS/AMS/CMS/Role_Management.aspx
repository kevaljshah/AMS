<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Role_Management.aspx.cs" Inherits="CMS_role_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
    <script src="../Script/Custom_JavaScript.js" language="javascript" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table width="100%" cellspacing="20" cellpadding="0">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;" colspan="2">
                <asp:Label ID="lbl_manage_roles" runat="server" Text="Manage Role" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="40%" align="right">
                <asp:Label ID="lbl_select_role" Text="Select Role:" runat="server"></asp:Label>
            </td>
            <td width="60%" align="left">
                <asp:DropDownList ID="ddl_select_role" runat="server" ToolTip="Select Role" OnSelectedIndexChanged="ddl_select_role_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv_select_role" runat="server" ControlToValidate="ddl_select_role" Text="*Invalid" CssClass="error_label_orange"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="40%" align="right" valign="top">
                <asp:Label ID="lbl_assign_page_access" runat="server" Text="Assign Page Access:"></asp:Label>
            </td>
            <td width="100%" align="left">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:TreeView ID="tv_role_assign" runat="server" ShowCheckBoxes="Leaf" ShowLines="true">
                            <ParentNodeStyle Font-Bold="true" />
                            <NodeStyle ForeColor="black" Font-Bold="false" Font-Italic="false" Font-Underline="false" />
                        </asp:TreeView>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddl_select_role" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" valign="top">
                <asp:Label ID="lbl_assigned_role_error" runat="server" CssClass="error_label_red" Height="16px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" style="border-top-style: solid; border-width: 1px; border-color: #585A59; padding: 10px; padding-left: 20px; padding-right: 10px;">
                <asp:Button ID="btn_assign" Text="Assign" runat="server" OnClick="btn_assign_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

