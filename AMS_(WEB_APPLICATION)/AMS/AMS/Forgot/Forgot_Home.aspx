<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Forgot_Home.aspx.cs" Inherits="Forgot_Forgot_Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <div style="margin-top: 10%;">
    </div>
    <asp:Accordion ID="accordion" runat="Server" AutoSize="None" FadeTransitions="true" TransitionDuration="250" FramesPerSecond="40" RequireOpenedPane="false"
        SuppressHeaderPostbacks="true" Height="100%" Width="100%" SelectedIndex="-1">
        <Panes>
            <asp:AccordionPane ID="AccordionPane1" runat="server">
                <Header>
                    <asp:Label ID="lbl_header1" runat="server" Text="I don't remember my password" ForeColor="#AE1213" Font-Size="Large"></asp:Label>
                </Header>
                <Content>
                    <table width="100%">
                        <tr>
                            <td align="right" width="55%">
                                <asp:TextBox ID="txt_username" runat="server" ToolTip="Username" MaxLength="50"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_username" runat="server" TargetControlID="txt_username" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            </td>
                            <td align="left" width="45%">
                                <asp:Label ID="lbl_error_username" runat="server" CssClass="error_label_red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AccordionPane2" runat="server">
                <Header>
                    <asp:Label ID="lbl_hrader2" runat="server" Text="I don't remember my username" ForeColor="#AE1213" Font-Size="Large"></asp:Label>
                </Header>
                <Content>
                    <table width="100%">
                        <tr>
                            <td align="right" width="55%">
                                <asp:TextBox ID="txt_email" runat="server" ToolTip="Email" MaxLength="50"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_email" runat="server" TargetControlID="txt_email" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            </td>
                            <td width="45%" align="left">
                                <asp:Label ID="lbl_error_email" runat="server" CssClass="error_label_red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </Content>
            </asp:AccordionPane>
        </Panes>
    </asp:Accordion>
    <table width="100%">
        <tr>
            <td colspan="2">
                <asp:Label ID="lbl_error_sending_fail" runat="server" CssClass="error_label_red" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="53%" align="right">
                <asp:Button ID="btn_continue" runat="server" Text="Continue" Width="100" Style="margin-top: 20px;" OnClick="btn_continue_Click" Visible="true" />
                <asp:Button ID="btn_back" runat="server" Text="Back" Width="100" OnClick="btn_back_Click" Style="margin-top: 20px;" Visible="false" />
            </td>
            <td width="47%" align="left" valign="bottom"></td>
        </tr>
    </table>
</asp:Content>

