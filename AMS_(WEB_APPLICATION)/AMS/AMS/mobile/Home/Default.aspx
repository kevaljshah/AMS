<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="mobile_Home_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" Runat="Server">

    <table id="Table3" runat="server" align="left" cellpading="0" cellspacing="10" width="100%">
        <tr>
            <td>
                 <asp:Button ID="Button1" runat="server" Text="Events" Width="100%"   CausesValidation="false" style="background-color:#AE1213;color:white;" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Button ID="Button2" runat="server" Text="Messages" Width="100%"   CausesValidation="false" style="background-color:#AE1213;color:white;" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td>
    <asp:Button ID="btn_AccSet" runat="server" Text="Account Settings" Width="100%"   CausesValidation="false" style="background-color:#AE1213;color:white;" OnClick="btn_AccSet_Click1" />
    </td>
            </tr>
          <tr>
            <td>
    <asp:Button ID="btn_changeprofilepic" runat="server" Text="Change Profile Picture" Width="100%"   CausesValidation="false" style="background-color:#AE1213;color:white;" OnClick="btn_changeprofilepic_Click1" />
    </td>
            </tr>
        <tr>
            <td>
                <asp:Button ID="btn_logout" runat="server" Text="Logout" Width="100%"   CausesValidation="false" style="background-color:#AE1213;color:white;" />
 </td>
            </tr>
                </table>
        </asp:Content>

