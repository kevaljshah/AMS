<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Event_Detail.aspx.cs" Inherits="Events_Event_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" width="100%" cellspacing="20" cellpadding="0">
         <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_event_detail" runat="server" Text="Event Detail" CssClass="page_header"></asp:Label>
             <asp:Button ID="Button1" runat="server" Text="Back" OnClick="btn_back_Click" style="background-color:#AE1213;color:white;" />
            </td>
        </tr>
        <tr>
            <td>
                <table style="width: 100%;">
                    <tr>
                        <td style="text-align:left">
                            <asp:Label ID="lbl_event_name_val" runat="server" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table id="Table2" runat="server" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                        <td style="text-align:left">
                            <asp:Label ID="lbl_committee_name" runat="server" Text="Committee :" Font-Size="Large"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:Label ID="lbl_committee_name_val" runat="server" Font-Size="Large">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left">
                            <asp:Label ID="lbl_event_date" runat="server" Text="Date :"></asp:Label>
                        </td>
                        <td  style="text-align:left">
                            <asp:Label ID="lbl_event_date_val" runat="server">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left">
                            <asp:Label ID="lbl_event_time" runat="server" Text="Timings :"></asp:Label>
                        </td>
                        <td  style="text-align:left">
                            <asp:Label ID="lbl_event_time_val" runat="server">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left">
                            <asp:Label ID="lbl_event_description" runat="server" Text="Description :"></asp:Label>
                        </td>
                        <td style="text-align:left">
                            <asp:Label ID="lbl_event_description_val" runat="server" Width="100%"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td style="text-align:left">
                <asp:Image ID="img_event_poster" runat="server" Visible="false" Width="50" Height="50" Style="height: auto; width: auto; max-height: 200px; max-width: 240px;" />
            </td>
        </tr>
        <tr>
            <td>
                <table id="Table3" runat="server" width="100%" cellpadding="0">
                    <tr>
                        <td  style="text-align:left">
                            <asp:Label ID="lbl_event_contact_detial" Text="Contact Details" runat="server" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td  style="text-align:left">
                                        <asp:Label ID="lbl_event_coordinaotr1_name_val" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td  style="text-align:left">
                                        <asp:Label ID="lbl_event_coordinaotr1_contact_val" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td  style="text-align:left">
                                        <asp:Label ID="lbl_event_coordinaotr2_name_val" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td  style="text-align:left">
                                        <asp:Label ID="lbl_event_coordinaotr2_contact_val" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btn_back" runat="server" Text="Back" OnClick="btn_back_Click" style="background-color:#AE1213;color:white;" Width="100%" />
            </td>
        </tr>
    </table>
</asp:Content>

