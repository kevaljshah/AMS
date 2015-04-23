<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Reply_Message.aspx.cs" Inherits="Message_Reply_Message" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" width="100%" cellspacing="20" cellpadding="0">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_reply_message" runat="server" Text="Reply Message" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table id="Table2" runat="server" width="100%" cellpadding="0" cellspacing="10">
                    <tr>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td>
                                        <asp:UpdatePanel ID="up_message_history" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <div id="div_message_history" style="height: 350px; width: 100%; overflow: auto; overflow-x: hidden;" runat="server" visible="false">
                                                    <asp:DataList ID="dl_message_history" runat="server" RepeatDirection="Vertical" ItemStyle-VerticalAlign="Middle" Width="100%">
                                                        <ItemTemplate>
                                                            <table width="100%" cellpadding="5" cellspacing="0">
                                                                <tr>
                                                                    <td align="left" width="15%">
                                                                        <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("name") %>' ForeColor="#AE1213"></asp:Label>
                                                                        <asp:Label ID="lbl_name1" runat="server" Text=":" ForeColor="#AE1213"></asp:Label>
                                                                    </td>
                                                                    <td align="left" width="65%">
                                                                        <asp:Literal ID="lt_text" runat="server" Text='<%# Eval("msg_text") %>'></asp:Literal>
                                                                    </td>
                                                                    <td align="right" width="20%">
                                                                        <asp:Label ID="lbl_time" runat="server" Text='<%# Eval("msg_timestamp") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                    </asp:DataList>
                                                </div>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="btn_send" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <asp:TextBox ID="txt_new_message_body" runat="server" Height="50px" Width="100%" TextMode="MultiLine" />
                                                <asp:TextBoxWatermarkExtender ID="wm_send_message_body" runat="server" TargetControlID="txt_new_message_body" WatermarkCssClass="textboxwatermark_left" WatermarkText="Write a message"></asp:TextBoxWatermarkExtender>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="btn_send" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Button ID="btn_back" runat="server" Text="Back" OnClick="btn_back_Click" Width="100" />
                                        <asp:Button ID="btn_send" runat="server" Text="Send" Width="100" Style="margin-top: 2%; margin-left: 5%;" OnClick="btn_send_Click" />
                                        <asp:Label ID="lbl_error" runat="server" CssClass="error_label_red" Visible="false"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
