<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Forgot_Home.aspx.cs" Inherits="Forgot_Forgot_Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <div style="margin-top: 10%;">
        <asp:Label ID="lbl_error" runat="server" Font-Size="Large"></asp:Label>
    </div>
    <asp:Accordion ID="accordion" runat="Server" AutoSize="None" FadeTransitions="true" TransitionDuration="250" FramesPerSecond="40" RequireOpenedPane="false"
        SuppressHeaderPostbacks="true" Height="100%" Width="100%" SelectedIndex="-1">
        <Panes>
            <asp:AccordionPane ID="AccordionPane1" runat="server">
                <Header>
                    <asp:Label ID="lbl_header1" runat="server" Text="I don't know my password" ForeColor="#AE1213" Font-Size="Large"></asp:Label>
                </Header>
                <Content>
                    <asp:Label ID="lbl_username" runat="server" Text="Username :"></asp:Label>
                    <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AccordionPane2" runat="server">
                <Header>
                    <asp:Label ID="lbl_hrader2" runat="server" Text="I don't know my username" ForeColor="#AE1213" Font-Size="Large"></asp:Label>
                </Header>
                <Content>
                    <asp:Label ID="lbl_email" runat="server" Text="Email ID :"></asp:Label>
                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                </Content>
            </asp:AccordionPane>
        </Panes>
    </asp:Accordion>
    <asp:Button ID="btn_continue" runat="server" Text="Continue" Width="100" Style="margin-top: 20px;" OnClick="btn_continue_Click" />
</asp:Content>

