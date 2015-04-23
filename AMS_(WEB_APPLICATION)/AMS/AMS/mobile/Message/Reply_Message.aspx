<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Reply_Message.aspx.cs" Inherits="Message_Reply_Message" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_reply_message" runat="server" Text="Reply Message" CssClass="page_header"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Back" OnClick="btn_back_Click" style="background-color:#AE1213;color:white;" CausesValidation="false" />
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table id="Table2" runat="server" width="100%" >
                    <tr>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td>
                                        <asp:UpdatePanel ID="up_message_history" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <div id="div_message_history" style=" width: 100%; overflow: auto; overflow-x: hidden;" runat="server" visible="false">
                                                    <asp:DataList ID="dl_message_history" runat="server" RepeatDirection="Vertical"  Width="100%">
                                                        <ItemTemplate>
                                                            <table ">
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("name") %>' ForeColor="#AE1213"></asp:Label>
                                                                        <asp:Label ID="lbl_name1" runat="server" Text=":" ForeColor="#AE1213"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Literal ID="lt_text" runat="server" Text='<%# Eval("msg_text") %>'></asp:Literal>
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
                                                <asp:TextBox ID="txt_new_message_body" runat="server" Height="50px" Width="95%" TextMode="MultiLine" />
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
                                        <asp:Button ID="btn_back" runat="server" Text="Back" OnClick="btn_back_Click" Width="100%" style="background-color:#AE1213;color:white;" />
                                       </td>
                                    </tr>
                                <tr>
                                    <td>
                                         <asp:Button ID="btn_send" runat="server" Text="Send" Width="100%" style="background-color:#AE1213;color:white;" OnClick="btn_send_Click" />
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
