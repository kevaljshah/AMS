<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="View_Album.aspx.cs" Inherits="Gallery_View_Album" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <asp:DataList ID="dl_menu" runat="server" RepeatDirection="Horizontal" RepeatColumns="5">
        <ItemTemplate>
            <asp:AdRotator ID="ar_album" runat="server" ImageUrlField='<%# Eval("submenu_text") %>' NavigateUrlField='<%# Eval("submenu_text") %>' />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

