<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="create.aspx.cs" Inherits="Newsletter_Create_Newsletter" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" width="100%" cellspacing="20" cellpadding="0">
        <tr>
            <td class="table_headercell">
                <asp:Label ID="Label22" runat="server" Text="Newsletter Receipent:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" Text="Select Type:" ID="Label2" />
                <asp:RadioButton runat="server" ID="rb2" Text="Group" ValidationGroup="nlgt" />
                <asp:RadioButton runat="server" ID="rb3" Text="Custom" ValidationGroup="nlgt" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Group Type:" />
                <asp:RadioButton runat="server" ID="RadioButton1" Text="One" ValidationGroup="nlgt" />
                <asp:RadioButton runat="server" ID="RadioButton2" Text="Many" ValidationGroup="nlgt" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_batch" runat="server" Text="Batch:" />
                <asp:DropDownList ID="ddl_batch" runat="server"></asp:DropDownList>
                <asp:Label ID="lbl_campus" runat="server" Text="Campus:" />
                <asp:DropDownList ID="ddl_campus" runat="server"></asp:DropDownList>
                <asp:Label ID="lbl_program" runat="server" Text="Program:" />
                <asp:DropDownList ID="ddl_program" runat="server"></asp:DropDownList>
                <asp:Label ID="lbl_stream" runat="server" Text="Stream:" />
                <asp:DropDownList ID="ddl_stream" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_div" runat="server" Text="Div:"></asp:Label>
                <asp:DropDownList ID="ddl_div" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" Width="100%" ID="tb_custom"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="table_headercell">
                <asp:Label ID="Label3" runat="server" Text="Subject:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" Width="100%" ID="tb_subject"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <ajaxtoolkit:HtmlEditorExtender ID="HtmlEditorExtender" TargetControlID="txt_body" runat="server" DisplaySourceTab="true" EnableSanitization="false"
                    OnImageUploadComplete="HtmlEditorExtender_ImageUploadComplete" >
                    <Toolbar>
                        <ajaxtoolkit:Undo />
                        <ajaxtoolkit:Redo />
                        <ajaxtoolkit:Bold />
                        <ajaxtoolkit:Italic />
                        <ajaxtoolkit:Underline />
                        <ajaxtoolkit:StrikeThrough />
                        <ajaxtoolkit:Subscript />
                        <ajaxtoolkit:Superscript />
                        <ajaxtoolkit:JustifyLeft />
                        <ajaxtoolkit:JustifyCenter />
                        <ajaxtoolkit:JustifyRight />
                        <ajaxtoolkit:JustifyFull />
                        <ajaxtoolkit:InsertOrderedList />
                        <ajaxtoolkit:InsertUnorderedList />
                        <ajaxtoolkit:CreateLink />
                        <ajaxtoolkit:UnLink />
                        <ajaxtoolkit:RemoveFormat />
                        <ajaxtoolkit:SelectAll />
                        <ajaxtoolkit:UnSelect />
                        <ajaxtoolkit:Delete />
                        <ajaxtoolkit:Cut />
                        <ajaxtoolkit:Copy />
                        <ajaxtoolkit:Paste />
                        <ajaxtoolkit:BackgroundColorSelector />
                        <ajaxtoolkit:ForeColorSelector />
                        <ajaxtoolkit:FontNameSelector />
                        <ajaxtoolkit:FontSizeSelector />
                        <ajaxtoolkit:Indent />
                        <ajaxtoolkit:Outdent />
                        <ajaxtoolkit:InsertHorizontalRule />
                        <ajaxtoolkit:HorizontalSeparator />
                        <ajaxtoolkit:InsertImage />
                    </Toolbar>
                </ajaxtoolkit:HtmlEditorExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox runat="server" Height="300px" Width="100%" ID="txt_body" Text="Email Body" TextMode="MultiLine" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_send" runat="server" Text="Send" OnClick="btn_send_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

