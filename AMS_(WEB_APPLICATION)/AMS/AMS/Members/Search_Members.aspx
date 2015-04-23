<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Search_Members.aspx.cs" Inherits="Members_View_Members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="tbl_search_option" width="100%" cellpadding="10" runat="server">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_search_members" runat="server" Text="Search Alumni Members" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table id="Table1" width="100%" runat="server" cellpadding="0" cellspacing="10">
                    <tr>
                        <td width="45%" align="right">
                            <asp:Label ID="lbl_passing_year" runat="server" Text="Passing Year :"></asp:Label>
                        </td>
                        <td width="55%" align="left">
                            <asp:DropDownList ID="ddl_passing_year" runat="server" ToolTip="Passing Year" TabIndex="1"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_passing_year" runat="server" ErrorMessage="*Required" ControlToValidate="ddl_passing_year" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="45%" align="right">
                            <asp:Label ID="lbl_campus" runat="server" Text="Campus:" />
                        </td>
                        <td width="55%" align="left">
                            <asp:DropDownList ID="ddl_campus" runat="server" ToolTip="Campus" TabIndex="2"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_campus" runat="server" ErrorMessage="*Required" ControlToValidate="ddl_campus" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="45%" align="right">
                            <asp:Label ID="lbl_program" runat="server" Text="Program:" />
                        </td>
                        <td width="55%" align="left">
                            <asp:DropDownList ID="ddl_program" runat="server" OnSelectedIndexChanged="ddl_program_SelectedIndexChanged" AutoPostBack="true" ToolTip="Program" TabIndex="3"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_program" runat="server" ErrorMessage="*Required" ControlToValidate="ddl_program" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="45%" align="right">
                            <asp:Label ID="lbl_stream" runat="server" Text="Stream:" />
                        </td>
                        <td width="55%" align="left">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:DropDownList ID="ddl_stream" runat="server" ToolTip="Stream" TabIndex="4"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfv_stream" runat="server" ErrorMessage="*Required" ControlToValidate="ddl_stream" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="ddl_program" EventName="SelectedIndexChanged" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
<%--                    <tr>
                        <td width="45%" align="right">
                            <asp:Label ID="lbl_division" runat="server" Text="Division:"></asp:Label>
                        </td>
                        <td width="55%" align="left">
                            <asp:DropDownList ID="ddl_division" runat="server" ToolTip="Division" TabIndex="5"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_division" runat="server" ErrorMessage="*Required" ControlToValidate="ddl_division" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>--%>
                    <tr>
                        <td width="45%" align="right">
                            <asp:Label ID="lbl_registration_status" runat="server" Text="Registration Status:"></asp:Label>
                        </td>
                        <td width="55%" align="left">
                            <asp:DropDownList ID="ddl_registration_status" runat="server" ToolTip="Registration Status" TabIndex="7"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_registration_status" runat="server" ErrorMessage="*Required" ControlToValidate="ddl_registration_status" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btn_serach" Text="Search" runat="server" Style="margin-left: 8%;" ToolTip="Search" TabIndex="8" OnClick="btn_serach_Click" CausesValidation="true" />
                            <asp:Label ID="lbl_error" runat="server" CssClass="error_label_red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
