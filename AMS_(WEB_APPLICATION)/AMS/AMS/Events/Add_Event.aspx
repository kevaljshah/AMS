<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Event.aspx.cs" Inherits="Events_Add_Event" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" width="100%" cellspacing="20" cellpadding="0">
         <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_add_event" runat="server" Text="Add Event" CssClass="page_header"></asp:Label>
            </td>
        </tr>
        <tr align="left">
            <td class="table_headercell">
                <asp:Label ID="lbl_event_details" runat="server" Text="Event Details:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table id="Table2" runat="server" width="100%" cellpadding="10" cellspacing="0">
                    <tr>
                        <td align="right" width="20%">
                            <asp:Label ID="lbl_committee_name" runat="server" Text="Committee Name :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_committee_name" runat="server" Width="100%"></asp:TextBox>
                        </td>
                        <td width="20%">
                            <asp:RequiredFieldValidator ID="rfv_committee_name" runat="server" ErrorMessage="*Required" ControlToValidate="txt_committee_name" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="20%">
                            <asp:Label ID="lbl_event_name" runat="server" Text="Event Name :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_event_name" runat="server" Width="100%"></asp:TextBox>
                        </td>
                        <td width="20%">
                            <asp:RequiredFieldValidator ID="rfv_event_name" runat="server" ErrorMessage="*Required" ControlToValidate="txt_event_name" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="20%">
                            <asp:Label ID="lbl_event_description" runat="server" Text="Event Description :"></asp:Label>
                        </td>
                        <td align="left" width="60%">
                            <asp:TextBox ID="txt_event_description" runat="server" TextMode="MultiLine" Width="100%" Height="200" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                        </td>
                        <td width="20%">
                            <asp:RequiredFieldValidator ID="rfv_event_description" runat="server" ErrorMessage="*Required" ControlToValidate="txt_event_description" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="20%">
                            <asp:Label ID="lbl_event_image" Text="Event Poster:" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:FileUpload ID="fu_event_poster" runat="server" AllowMultiple="false" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" cellpadding="10" cellspacing="0">

                    <tr>
                        <td width="20%" align="right">
                            <asp:Label ID="lbl_event_date" runat="server" Text="Date:"></asp:Label>
                        </td>
                        <td width="15%" align="right">
                            <asp:Label ID="lbl_event_date_from" runat="server" Text="From:"></asp:Label>
                            <asp:TextBox ID="txt_event_date_from" runat="server" Width="60%"></asp:TextBox>
                            <asp:CalendarExtender ID="ce_event_date_from" runat="server" TargetControlID="txt_event_date_from"></asp:CalendarExtender>
                        </td>
                        <td width="15%" align="right">
                            <asp:Label ID="lbl_event_date_to" runat="server" Text="To:"></asp:Label>
                            <asp:TextBox ID="txt_event_date_to" runat="server" Width="60%"></asp:TextBox>
                            <asp:CalendarExtender ID="ce_event_date_to" runat="server" TargetControlID="txt_event_date_to"></asp:CalendarExtender>
                        </td>
                        <td width="50%">
                            <asp:RequiredFieldValidator ID="rfv_event_date_from" runat="server" ErrorMessage="*Required" ControlToValidate="txt_event_date_from" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="right">
                            <asp:Label ID="lbl_event_time" runat="server" Text="Time:"></asp:Label>
                        </td>
                        <td width="15%" align="right">
                            <asp:Label ID="lbl_event_from_time" Text="From:" runat="server"></asp:Label>
                            <asp:TextBox ID="txt_event_from_time" runat="server" Width="60%"></asp:TextBox>
                        </td>
                        <td width="15%" align="right">
                            <asp:Label ID="lbl_event_to_time" Text="To:" runat="server"></asp:Label>
                            <asp:TextBox ID="txt_event_to_time" runat="server" Width="60%"></asp:TextBox>
                        </td>
                        <td width="15%">
                            <asp:RequiredFieldValidator ID="rfv_event_from_time" runat="server" ErrorMessage="*Required" ControlToValidate="txt_event_from_time" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table width="100%" cellpadding="10" cellspacing="0">
                    <tr>
                        <td colspan="2" align="center" style="border-width: 2px 1px 2px 2px; border-color: black; border-style: solid;">
                            <asp:Label ID="lbl_coordinator1" runat="server" Text="Co-ordinator1" Font-Bold="true" Font-Size="Large"></asp:Label>
                        </td>
                        <td colspan="2" align="center" style="border-width: 2px 2px 2px 1px; border-color: black; border-style: solid">
                            <asp:Label ID="lbl_coordinator2" runat="server" Text="Co-ordinator2" Font-Bold="true" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="25%" style="border-width: 0px 0px 0px 2px; border-color: black; border-style: solid">
                            <asp:Label ID="lbl_coordinator1_name" runat="server" Text="Co-ordinator's Name:"></asp:Label>
                        </td>
                        <td width="25%" style="border-width: 0px 1px 0px 0px; border-color: black; border-style: solid">
                            <asp:TextBox ID="txt_coordinator1_name" runat="server" Width="80%"></asp:TextBox>
                        </td>
                        <td width="25%" align="right" style="border-width: 0px 0px 0px 1px; border-color: black; border-style: solid">
                            <asp:Label ID="lbl_coordinator2_name" runat="server" Text="Co-ordinator's Name:"></asp:Label>
                        </td>
                        <td width="25%" style="border-width: 0px 2px 0px 0px; border-color: black; border-style: solid">
                            <asp:TextBox ID="txt_coordinator2_name" runat="server" Width="80%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="25%" style="border-width: 0px 0px 0px 2px; border-color: black; border-style: solid">
                            <asp:Label ID="lbl_coordinator1_email" runat="server" Text="Co-ordinator's Email:"></asp:Label>
                        </td>
                        <td width="25%" style="border-width: 0px 1px 0px 0px; border-color: black; border-style: solid">
                            <asp:TextBox ID="txt_coordinator1_email" runat="server" Width="80%" TextMode="Email"></asp:TextBox>
                        </td>
                        <td width="25%" align="right" style="border-width: 0px 0px 0px 1px; border-color: black; border-style: solid">
                            <asp:Label ID="lbl_coordinator2_email" runat="server" Text="Co-ordinator's Email:"></asp:Label>
                        </td>
                        <td width="25%" style="border-width: 0px 2px 0px 0px; border-color: black; border-style: solid">
                            <asp:TextBox ID="txt_coordinator2_email" runat="server" Width="80%" TextMode="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="25%" align="right" style="border-width: 0px 0px 2px 2px; border-color: black; border-style: solid">
                            <asp:Label ID="lbl_coordinator1_mobile" runat="server" Text="Co-ordinator's Mobile:"></asp:Label>
                        </td>
                        <td width="25%" style="border-width: 0px 1px 2px 0px; border-color: black; border-style: solid">
                            <asp:TextBox ID="txt_coordinator1_mobile" runat="server" Width="60%"></asp:TextBox>
                        </td>
                        <td width="25%" align="right" style="border-width: 0px 0px 2px 1px; border-color: black; border-style: solid">
                            <asp:Label ID="lbl_coordinator2_mobile" runat="server" Text="Co-ordinator's Mobile:"></asp:Label>
                        </td>
                        <td width="25%" style="border-width: 0px 2px 2px 0px; border-color: black; border-style: solid">
                            <asp:TextBox ID="txt_coordinator2_mobile" runat="server" Width="60%"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr align="center" style="border-bottom-style: solid; border-width: 1px; border-color: #585A59;">
            <td style="border-top-style: solid; border-width: 1px; border-color: #585A59; padding: 10px; padding-left: 20px; padding-right: 10px;">
                <asp:Button ID="btn_add" runat="server" Text="Add" CausesValidation="true" OnClick="btn_add_Click" />
                <asp:Label ID="lbl_error" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

