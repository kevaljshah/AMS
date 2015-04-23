<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Message_Home.aspx.cs" Inherits="mobile_Home_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" Runat="Server">

    <table id="Table3" runat="server" align="left" cellpading="20" cellspacing="0" width="100%">
        <tr>
            <td>
                 <asp:Button ID="Button1" runat="server" Text="New Message" Width="100%"   CausesValidation="false" style="background-color:#AE1213;color:white;" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Button ID="Button2" runat="server" Text="Inbox" Width="100%"   CausesValidation="false" style="background-color:#AE1213;color:white;" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td>
    <asp:Button ID="btn_AccSet" runat="server" Text="Sent Messages" Width="100%"   CausesValidation="false" style="background-color:#AE1213;color:white;" OnClick="btn_AccSet_Click1" />
    </td>
            </tr>
          <tr>
            <td>
    <asp:Button ID="btn_changeprofilepic" runat="server" Text="Back" Width="100%"   CausesValidation="false" style="background-color:#AE1213;color:white;" OnClick="btn_changeprofilepic_Click1" />
    </td>
            </tr>
        
                </table>
        </asp:Content>

