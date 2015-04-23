<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Login_Student_Detail.aspx.cs" Inherits="Login_Login_Student_Detail" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table1" runat="server" align="center" cellspacing="0" cellpadding="0" width="100%">
    <tr>
        <td>
<asp:Label ID="lbl_msg_title" runat="server" Text="Tell Us More!" ForeColor="#AE1213" Font-Size="Large"></asp:Label>
                        </td>
        </tr>
           <tr>
               <td>
                    <asp:Label ID="lbl_msgl1" runat="server" Text="We would love to know more about you.Fill in the details, such that your records are updated" Font-Size="Medium"></asp:Label>
               </td>
           </tr>
        <tr>
            <td>
                   <asp:Label ID="lbl_details" ForeColor="#AE1213" runat="server" Text="Details" Font-Size="Large"></asp:Label>
     </td>
            </tr>
        <tr>
            <td style="text-align:left">
                             <asp:Label ID="lbl_name" runat="server" Text="Name :"  Font-Bold="true"></asp:Label>
            
<asp:Label ID="lbl_name_val" runat="server" Font-Bold="true"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align:left">
                 <asp:Label ID="lbl_gender" runat="server" Text="Gender :" Font-Bold="true" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                
                            <asp:DropDownList ID="ddl_gender" runat="server" Width="96%"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                  <asp:RequiredFieldValidator ID="rfv_gender" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_gender" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align:left">
                <asp:Label ID="lbl_email" runat="server" Text="Email :" Font-Bold="true" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                  <asp:TextBox ID="txt_email" runat="server" Width="96%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBoxWatermarkExtender ID="wm_email" runat="server" TargetControlID="txt_email" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td>
                       <asp:RequiredFieldValidator ID="rfv_email" runat="server" ErrorMessage="*Required" ControlToValidate="txt_email" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                         <asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="*Incorrect" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        
        <tr>
            <td style="text-align:left">
                <asp:Label ID="lbl_dob" runat="server" Text="BirthDate :" Font-Bold="true" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:TextBox ID="txt_dob" runat="server"  Width="96%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_dob" runat="server" ErrorMessage="*Required" ControlToValidate="txt_dob" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CalendarExtender ID="ce_dob" runat="server" TargetControlID="txt_dob"></asp:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td>
                   <asp:TextBoxWatermarkExtender ID="wm_dob" runat="server" TargetControlID="txt_dob" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
            </td>
        </tr>
     <tr>
            <td style="text-align:left">
                 <asp:Label ID="lbl_country" runat="server" Text="Country :" Width="100%" Font-Bold="true"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align:left">
                 <asp:DropDownList ID="ddl_country" runat="server" AutoPostBack="true" ToolTip="Country" OnSelectedIndexChanged="ddl_country_SelectedIndexChanged" Width="100%"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_country" runat="server" ErrorMessage="*Required" ControlToValidate="ddl_country" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
       
        <tr>
            <td style="text-align:left">
                 <asp:Label ID="lbl_mobile" runat="server" Text="Mobile :" Width="100%" Font-Bold="true"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align:left">
       <asp:UpdatePanel ID="up_country" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:TextBox ID="txt_country_code" runat="server" Width="40px" ToolTip="Country Code" MaxLength="5"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv_country_code" runat="server" ControlToValidate="txt_country_code" Display="Dynamic" ErrorMessage="*" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rev_country_code" runat="server" ControlToValidate="txt_country_code" Display="Dynamic" ErrorMessage="*" ValidationExpression="^(\d{1,4})$" CssClass="error_label_orange"></asp:RegularExpressionValidator>
                                    <asp:Label ID="lbl_country_code" runat="server" Text="-"></asp:Label>
                                    <asp:TextBoxWatermarkExtender ID="wm_country_code" runat="server" TargetControlID="txt_country_code" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:TextBox ID="txt_mobile" runat="server"  ToolTip="Mobile" MaxLength="50"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_mobile" runat="server" TargetControlID="txt_mobile" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RegularExpressionValidator ID="rev_mobile" runat="server" ControlToValidate="txt_mobile" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^(\d{10})$" CssClass="error_label_orange"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="rfv_mobile" runat="server" ControlToValidate="txt_mobile" Display="Dynamic" ErrorMessage="*Required" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="ddl_country" EventName="SelectedIndexChanged" />
                                </Triggers>
                            </asp:UpdatePanel>
                </td>
            </tr>
        <tr>
            <td style="text-align:left">
                  <asp:Label ID="lbl_landline" runat="server" Text="Landline :" Font-Bold="true" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txt_landline" runat="server" Width="96%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBoxWatermarkExtender ID="wm_landline" runat="server" TargetControlID="txt_landline" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:RegularExpressionValidator ID="rev_landline" runat="server" ControlToValidate="txt_landline" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^[+]?([0-9]*)$" ForeColor="#FF6600"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align:left">
                <asp:Label ID="lbl_line1" runat="server" Text="Address Line1 :" Font-Bold="true"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >
                 <asp:TextBox ID="txt_line1" runat="server" Width="96%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBoxWatermarkExtender ID="wm_line1" runat="server" TargetControlID="txt_line1" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rfv_line1" runat="server" ErrorMessage="*Required" ControlToValidate="txt_line1" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align:left">
                 <asp:Label ID="lbl_line2" runat="server" Text="Address Line2 :" Font-Bold="true"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:TextBox ID="txt_line2" runat="server" Width="96%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:TextBoxWatermarkExtender ID="wm_line2" runat="server" TargetControlID="txt_line2" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td>
                  <asp:RequiredFieldValidator ID="rfv_line2" runat="server" ErrorMessage="*Required" ControlToValidate="txt_line2" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align:left">
                <asp:Label ID="lbl_city" runat="server" Text="City :" Font-Bold="true" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                  <asp:TextBox ID="txt_city" runat="server" Width="96%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBoxWatermarkExtender ID="wm_city" runat="server" TargetControlID="txt_city" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rfv_city" runat="server" ErrorMessage="*Required" ControlToValidate="txt_city" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align:left">
                <asp:Label ID="lbl_state" runat="server" Text="State/Province :" Font-Bold="true" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txt_state" runat="server" Width="96%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBoxWatermarkExtender ID="wm_state" runat="server" TargetControlID="txt_state" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rfv_state" runat="server" ErrorMessage="*Required" ControlToValidate="txt_state" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align:left">
                 <asp:Label ID="lbl_pincode" runat="server" Text="Zip/Postal Code :" Width="100%" Font-Bold="true"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:TextBox ID="txt_pincode" runat="server" Width="96%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                  <asp:TextBoxWatermarkExtender ID="wm_pincode" runat="server" TargetControlID="txt_pincode" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td>
                  <asp:RequiredFieldValidator ID="rfv_pincode" runat="server" ErrorMessage="*Required" ControlToValidate="txt_pincode" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:RegularExpressionValidator ID="rev_pincode" runat="server" ControlToValidate="txt_pincode" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^([0-9]*)$" ForeColor="#FF6600"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align:left">
                <asp:Label ID="lbl_relation_status" runat="server" Text="Relationship Status :" Width="100%" Font-Bold="true"></asp:Label>
            </td>
        </tr><tr>
            <td>
                <asp:DropDownList ID="ddl_relationship_status" runat="server" Width="96%"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfv_relationship_status" runat="server" ErrorMessage="*Required" ControlToValidate="ddl_relationship_status" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
            </td>
             </tr>
        <tr>
            <td style="text-align:left">
                 <asp:Label ID="lbl_conpany_name" runat="server" Text="Company Name :" Width="100%" Font-Bold="true"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:TextBox ID="txt_company_name" runat="server" Width="96%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBoxWatermarkExtender ID="wm_company_name" runat="server" TargetControlID="txt_company_name" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
            </td>
        </tr>
       
        <tr>
            <td style="text-align:left">
                 <asp:Label ID="lbl_designation" runat="server" Text="Designation :" Font-Bold="true" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txt_designation" runat="server" Width="96%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBoxWatermarkExtender ID="wm_designation" runat="server" TargetControlID="txt_designation" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
            </td>      </tr>
        <tr>
            <td>
                   <asp:Button ID="btn_save" runat="server" Text="Save" Width="100%" CausesValidation="true" OnClick="btn_save_Click" />
            </td>
        </tr>
        <tr>
            <td>
               <asp:Label ID="lbl_error" runat="server" CssClass="error_label_red" Height="16px"></asp:Label>
            </td>
        </tr>
         </table>
</asp:Content>

