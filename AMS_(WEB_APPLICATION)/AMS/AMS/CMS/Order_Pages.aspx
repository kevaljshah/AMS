<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Order_Pages.aspx.cs" Inherits="CMS_Order_Pages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table width="100%" cellspacing="20" cellpadding="0">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;" colspan="2">
                <asp:Label ID="lbl_manage_page_order" runat="server" Text="Manage Page Order" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="40%" align="right">
                <asp:Label ID="lbl_select_role" Text="Select role:" runat="server"></asp:Label>
            </td>
            <td width="60%" align="left">
                <asp:DropDownList ID="ddl_select_role" runat="server" ToolTip="Select role"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv_select_role" runat="server" ControlToValidate="ddl_select_role" Text="*Invalid" CssClass="error_label_orange"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="40%" align="right">
                <asp:Label ID="lbl_select_order_type" Text="Select Order Type:" runat="server"></asp:Label>
            </td>
            <td width="60%" align="left">
                <asp:DropDownList ID="ddl_order_type" runat="server" ToolTip="Select Order Type" OnSelectedIndexChanged="ddl_order_type_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv_order_type" runat="server" ControlToValidate="ddl_order_type" Text="*Invalid" CssClass="error_label_orange"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="100%" align="center" colspan="2">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:GridView ID="gv_menu" runat="server" AutoGenerateColumns="False" OnRowEditing="gv_menu_RowEditing" OnRowUpdating="gv_menu_RowUpdating" Visible="false" OnRowCancelingEdit="gv_menu_RowCancelingEdit" PagerStyle-Font-Underline="false" PagerStyle-ForeColor="Black" PagerStyle-HorizontalAlign="Center" AlternatingRowStyle-BackColor="#ECECEC" AlternatingRowStyle-ForeColor="Black"
                            RowStyle-ForeColor="Black" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" AllowSorting="false" Style="margin-top: 2%">
                            <HeaderStyle ForeColor="White" BackColor="#AE1213" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="menu_name" HeaderText="Menu Name" SortExpression="menu_name" ReadOnly="true" />
                                <asp:TemplateField HeaderText="Menu Order">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_menu_order" runat="server" Text='<%#Eval("menu_order") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_menu_order" runat="server" Text='<%#Eval("menu_order") %>'></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="rev_menu_order" runat="server" ControlToValidate="txt_menu_order" Display="Dynamic" ErrorMessage="*Incorrect" ForeColor="#FF6600" ValidationExpression="^[0-9]?[0-9]$"></asp:RegularExpressionValidator>
                                        <asp:HiddenField ID="hf_menu_id" runat="server" Value='<%#Eval("menu_id") %>' />
                                    </EditItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddl_order_type" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:GridView ID="gv_submenu" runat="server" AutoGenerateColumns="False" OnRowEditing="gv_submenu_RowEditing" OnRowUpdating="gv_submenu_RowUpdating" Visible="false" OnRowCancelingEdit="gv_submenu_RowCancelingEdit" PagerStyle-Font-Underline="false" PagerStyle-ForeColor="Black" PagerStyle-HorizontalAlign="Center" AlternatingRowStyle-BackColor="#ECECEC" AlternatingRowStyle-ForeColor="Black" RowStyle-ForeColor="Black" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" AllowSorting="false" Style="margin-top: 2%">
                            <HeaderStyle ForeColor="White" BackColor="#AE1213" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="submenu_text" HeaderText="Sub-Menu Name" SortExpression="submenu_text" ReadOnly="true" />
                                <asp:BoundField DataField="menu_name" HeaderText="Menu Name" SortExpression="menu_name" ReadOnly="true" />
                                <asp:TemplateField HeaderText="Page Order">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_submenu_order" runat="server" Text='<%#Eval("submenu_order") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_submenu_order" runat="server" Text='<%#Eval("submenu_order") %>'></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="rev_submenu_order" runat="server" ControlToValidate="txt_submenu_order" Display="Dynamic" ErrorMessage="*Incorrect" ForeColor="#FF6600" ValidationExpression="^[0-9]?[0-9]$"></asp:RegularExpressionValidator>
                                        <asp:HiddenField ID="hf_assigned_role_id" runat="server" Value='<%#Eval("assigned_role_id") %>' />
                                    </EditItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddl_order_type" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" valign="top">
                <asp:Label ID="lbl_assigned_role_error" runat="server" CssClass="error_label_red" Height="16px"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

