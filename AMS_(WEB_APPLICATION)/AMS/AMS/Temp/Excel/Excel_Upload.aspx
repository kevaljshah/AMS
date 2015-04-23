<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="~/Members/Excel_Upload.aspx.cs" Inherits="Excel_Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <asp:HiddenField ID="hf_gr_no" runat="server" />
    <asp:HiddenField ID="hf_roll_no" runat="server" />
    <asp:HiddenField ID="hf_first_name" runat="server" />
    <asp:HiddenField ID="hf_middle_name" runat="server" />
    <asp:HiddenField ID="hf_last_name" runat="server" />
    <table id="Table1" runat="server" cellspacing="20" width="100%" align="center">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_excel_upload" runat="server" Text="Excel Upload" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <table id="Table2" runat="server" cellpadding="10" cellspacing="0">
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_choose_file" runat="server" Text="Choose File :"></asp:Label>
                        </td>
                        <td align="left">

                            <asp:Panel ID="Panel1" runat="server" Visible="true" DefaultButton="btn_save_file">
                                <asp:FileUpload ID="fu_upload" runat="server" AllowMultiple="false" ToolTip="Choose Excel Sheet" />
                            </asp:Panel>
                        </td>
                        <td>
                            <asp:Button ID="btn_save_file" runat="server" Text="Save File" OnClick="btn_save_file_Click" CausesValidation="true" ValidationGroup="vg_save_file" ToolTip="Save Excel in application space" />

                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2" align="left">
                            <asp:RegularExpressionValidator ID="rev_upload" runat="server" ErrorMessage="Only excel files are allowed!" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.xlsx)$" ControlToValidate="fu_upload" Display="Dynamic" CssClass="error_label_red"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="rfv_upload" runat="server" ErrorMessage="Select an excel sheet!" ControlToValidate="fu_upload" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_save_file"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_sheet_name" runat="server" Text="Sheet :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddl_sheet" runat="server" AutoPostBack="true" OnTextChanged="ddl_sheet_TextChanged" ValidationGroup="vg_save" ToolTip="Select Excel Sheet"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_sheet" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_sheet" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_gr_no" runat="server" Text="Gr No. :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddl_gr_no" runat="server" ValidationGroup="vg_save" ToolTip="Select column having Gr No."></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_gr_no" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_gr_no" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_roll_no" runat="server" Text="Roll No. :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddl_roll_no" runat="server" ValidationGroup="vg_save" ToolTip="Select column having Roll No."></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_roll_no" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_roll_no" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_firt_name" runat="server" Text="First Name :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddl_first_name" runat="server" ValidationGroup="vg_save" ToolTip="Select column having First Name"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_first_name" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_first_name" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_middle_name" runat="server" Text="Middle Name :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddl_middle_name" runat="server" ValidationGroup="vg_save" ToolTip="Select column having Middle Name."></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_middle_name" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_middle_name" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_last_name" runat="server" Text="Last Name :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddl_last_name" runat="server" ValidationGroup="vg_save" ToolTip="Select column having Last Name"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_last_name" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_last_name" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_program" runat="server" Text="Program :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddl_program" runat="server" OnTextChanged="ddl_program_TextChanged" AutoPostBack="true" ValidationGroup="vg_save" ToolTip="Select Program"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_program" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_program" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_stream" runat="server" Text="Stream :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:DropDownList ID="ddl_stream" runat="server" ValidationGroup="vg_save" ToolTip="Select Stream"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfv_stream" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_stream" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_save"></asp:RequiredFieldValidator>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="ddl_program" EventName="TextChanged" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_division" runat="server" Text="Division"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddl_division" runat="server" ValidationGroup="vg_save" ToolTip="Select Division"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_division" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_division" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_passing_year" runat="server" Text="Passing Year :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddl_passing_year" runat="server" ValidationGroup="vg_save" ToolTip="Select Passing Year"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_passing_year" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_passing_year" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lbl_campus" runat="server" Text="Campus :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="ddl_campus" runat="server" ValidationGroup="vg_save" ToolTip="Select Campus"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_campus" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_campus" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_save"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr align="center" style="border-bottom-style: solid; border-width: 1px; border-color: #585A59;" valign="top">
            <td style="border-top-style: solid; border-width: 1px; border-color: #585A59; padding: 10px; padding-left: 20px; padding-right: 10px;" height="70px">
                <asp:Button ID="btn_save" runat="server" Text="Save" OnClick="btn_save_Click" ValidationGroup="vg_save" ToolTip="Save Excel Details in Database" />
                <asp:Button ID="btn_cancel" runat="server" Text="Cancel" OnClick="btn_cancel_Click" Style="margin-left: 10%;" CausesValidation="false" ToolTip="Delete excel" />
                <asp:Label ID="lbl_error" runat="server" CssClass="error_label_red"></asp:Label>
            </td>
        </tr>
    </table>
    <table id="Table3" runat="server" width="100%" visible="false" cellspacing="20">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_excel_uplaod1" runat="server" Text="Excel Upload" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr align="left">
            <td class="table_headercell">
                <asp:Label ID="lbl_successful" runat="server" Text="Student Added In Database:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lbl_success_count" runat="server" Font-Bold="true" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lbl_excel_save" runat="server" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="gv_success" runat="server" AutoGenerateColumns="false" RowStyle-HorizontalAlign="Center" AlternatingRowStyle-BackColor="#ECECEC" AlternatingRowStyle-ForeColor="Black">
                    <HeaderStyle ForeColor="White" BackColor="#AE1213" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:BoundField HeaderText="GR No." DataField="std_gr_no" />
                        <asp:BoundField HeaderText="Roll No" DataField="std_roll_no" />
                        <asp:BoundField HeaderText="First Name" DataField="std_first_name" />
                        <asp:BoundField HeaderText="Middle Name" DataField="std_middle_name" />
                        <asp:BoundField HeaderText="Last Name" DataField="std_last_name" />
                        <asp:BoundField HeaderText="Program" DataField="std_program" />
                        <asp:BoundField HeaderText="Stream" DataField="std_stream" />
                        <asp:BoundField HeaderText="Division" DataField="std_division" />
                        <asp:BoundField HeaderText="Passin Year" DataField="std_passing_year" />
                        <asp:BoundField HeaderText="Campus" DataField="std_campus" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btn_back_success" runat="server" Text="Back" OnClick="btn_back_Click" />
            </td>
        </tr>
    </table>
    <table id="Table4" runat="server" width="100%" visible="false" cellspacing="20">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_excel_upload2" runat="server" Text="Excel Upload" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr align="left">
            <td class="table_headercell">
                <asp:Label ID="lbl_failed" runat="server" Text="Student Not Added In Database:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lbl_failed_count" runat="server" Font-Bold="true" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="gv_failed" runat="server" AutoGenerateColumns="false" AlternatingRowStyle-BackColor="#ECECEC" AlternatingRowStyle-ForeColor="Black">
                    <HeaderStyle ForeColor="White" BackColor="#AE1213" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:BoundField HeaderText="GR No." DataField="std_gr_no" />
                        <asp:BoundField HeaderText="Roll No" DataField="std_roll_no" />
                        <asp:BoundField HeaderText="First Name" DataField="std_first_name" />
                        <asp:BoundField HeaderText="Middle Name" DataField="std_middle_name" />
                        <asp:BoundField HeaderText="Last Name" DataField="std_last_name" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btn_back_failed" runat="server" Text="Back" OnClick="btn_back_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
