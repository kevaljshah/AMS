<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Create_Newsletter.aspx.cs" Inherits="Newsletter_Create_Newsletter" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" width="100%" cellspacing="20" cellpadding="0">
        <tr>
            <td class="table_headercell">
                <asp:Label ID="lbl_create_newsletter" runat="server" Text="Create Newsletter :"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Accordion ID="accordion" runat="Server" AutoSize="None" FadeTransitions="true" TransitionDuration="250" FramesPerSecond="40" RequireOpenedPane="false"
                    SuppressHeaderPostbacks="true" Height="100%" Width="100%" SelectedIndex="-1">
                    <Panes>
                        <asp:AccordionPane ID="AccordionPane1" runat="server">
                            <Header>
                                <asp:Label ID="lbl_header1" runat="server" Text="Group" ForeColor="#AE1213" Font-Size="Large"></asp:Label>
                            </Header>
                            <Content>
                                <table width="100%" runat="server" cellpadding="0" cellspacing="10">
                                    <tr>
                                        <td width="45%" align="right">
                                            <asp:Label ID="lbl_passing_year" runat="server" Text="Passing Year :"></asp:Label>
                                        </td>
                                        <td width="55%" align="left">
                                            <asp:DropDownList ID="ddl_passing_year" runat="server"></asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="45%" align="right">
                                            <asp:Label ID="lbl_campus" runat="server" Text="Campus:" />
                                        </td>
                                        <td width="55%" align="left">
                                            <asp:DropDownList ID="ddl_campus" runat="server"></asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="45%" align="right">
                                            <asp:Label ID="lbl_program" runat="server" Text="Program:" />
                                        </td>
                                        <td width="55%" align="left">
                                            <asp:DropDownList ID="ddl_program" runat="server" OnTextChanged="ddl_program_TextChanged" AutoPostBack="true"></asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="45%" align="right">
                                            <asp:Label ID="lbl_stream" runat="server" Text="Stream:" />
                                        </td>
                                        <td width="55%" align="left">
                                            <asp:DropDownList ID="ddl_stream" runat="server"></asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="45%" align="right">
                                            <asp:Label ID="lbl_div" runat="server" Text="Div:"></asp:Label>
                                        </td>
                                        <td width="55%" align="left">
                                            <asp:DropDownList ID="ddl_division" runat="server"></asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </asp:AccordionPane>
                        <asp:AccordionPane ID="AccordionPane2" runat="server">
                            <Header>
                                <asp:Label ID="lbl_hrader2" runat="server" Text="Individual" ForeColor="#AE1213" Font-Size="Large"></asp:Label>
                            </Header>
                            <Content>
                                <table width="100%" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td align="center">
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <asp:TextBoxWatermarkExtender ID="wm_to" runat="server" TargetControlID="txt_to" WatermarkCssClass="textboxwatermark_left" WatermarkText="To :"></asp:TextBoxWatermarkExtender>
                                                    <asp:AutoCompleteExtender ID="ace_to" runat="server" TargetControlID="txt_to" EnableCaching="true"
                                                        ServiceMethod="GetCompletionList" ShowOnlyCurrentWordInCompletionListItem="true" UseContextKey="True" MinimumPrefixLength="1"
                                                        DelimiterCharacters="," FirstRowSelected="true" CompletionInterval="500">
                                                    </asp:AutoCompleteExtender>
                                                    <asp:TextBox ID="txt_to" runat="server" Width="97%"></asp:TextBox>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td valign="top">
                                            <asp:Label ID="lbl_msg" runat="server" Text="Enter , to search more than one student" Font-Size="X-Small"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </Content>
                        </asp:AccordionPane>
                    </Panes>
                </asp:Accordion>
            </td>
        </tr>
        <tr>
            <td>
                <table id="Table2" runat="server" width="100%" cellpadding="0" cellspacing="10">
                    <tr align="center">
                        <td>
                            <asp:TextBox ID="txt_subject" runat="server" Width="99%"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_subject" runat="server" TargetControlID="txt_subject" WatermarkCssClass="textboxwatermark_left" WatermarkText="Add a subjecct :"></asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:TextBox ID="txt_body" runat="server" Height="300px" Width="99%" TextMode="MultiLine" />
                            <asp:HtmlEditorExtender ID="HtmlEditorExtender" TargetControlID="txt_body" runat="server" DisplaySourceTab="true" EnableSanitization="false">
                                <Toolbar>
                                    <asp:Undo />
                                    <asp:Redo />
                                    <asp:Bold />
                                    <asp:Italic />
                                    <asp:Underline />
                                    <asp:StrikeThrough />
                                    <asp:Subscript />
                                    <asp:Superscript />
                                    <asp:JustifyLeft />
                                    <asp:JustifyCenter />
                                    <asp:JustifyRight />
                                    <asp:JustifyFull />
                                    <asp:InsertOrderedList />
                                    <asp:InsertUnorderedList />
                                    <asp:CreateLink />
                                    <asp:UnLink />
                                    <asp:RemoveFormat />
                                    <asp:SelectAll />
                                    <asp:UnSelect />
                                    <asp:Delete />
                                    <asp:Cut />
                                    <asp:Copy />
                                    <asp:Paste />
                                    <asp:BackgroundColorSelector />
                                    <asp:ForeColorSelector />
                                    <asp:FontNameSelector />
                                    <asp:FontSizeSelector />
                                    <asp:Indent />
                                    <asp:Outdent />
                                    <asp:InsertHorizontalRule />
                                    <asp:HorizontalSeparator />
                                </Toolbar>
                            </asp:HtmlEditorExtender>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:Button ID="btn_send" runat="server" Text="Send" Width="100" OnClick="btn_send_Click" />
            </td>
        </tr>
    </table>
    <table id="Table3" runat="server" width="100%" cellspacing="20" visible="false">
        <tr>
            <td class="table_headercell">
                <asp:Label ID="lbl_sent_newsletter" runat="server" Text="List of Sent Newsletter :"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="gv_success" runat="server" AutoGenerateColumns="false" Width="100%">
                    <Columns>
                        <asp:BoundField HeaderText="GR No." DataField="email" ItemStyle-Width="33%" />
                        <asp:BoundField HeaderText="Roll No" DataField="gr_no" ItemStyle-Width="33%" />
                        <asp:BoundField HeaderText="Name" DataField="name" ItemStyle-Width="33%" />
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
    <table id="Table4" runat="server" width="100%" cellspacing="20" visible="false">
        <tr>
            <td class="table_headercell">
                <asp:Label ID="lbl_failed_newsletter" runat="server" Text="List of Failed Newsletter :"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="gv_fail" runat="server" AutoGenerateColumns="false" Width="100%">
                    <Columns>
                        <asp:BoundField HeaderText="GR No." DataField="email" ItemStyle-Width="33%" />
                        <asp:BoundField HeaderText="Roll No" DataField="gr_no" ItemStyle-Width="33%" />
                        <asp:BoundField HeaderText="Name" DataField="name" ItemStyle-Width="33%" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="Back" OnClick="btn_back_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

