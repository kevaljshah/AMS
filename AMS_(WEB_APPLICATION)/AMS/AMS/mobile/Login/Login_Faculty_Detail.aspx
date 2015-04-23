<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Login_Faculty_Detail.aspx.cs" Inherits="Login_Login_Faculty_Detail" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table3" runat="server" align="left" cellpading="0" cellspacing="0" width="100%">
        <tr>
            <td>
                <asp:Label ID="lbl_msg_title" runat="server" Text="Tell Us More!We would love to know more about you.Fill in the details, such that your records are updated" ForeColor="#AE1213" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align:center" colspan="2">
                            <asp:Label ID="lbl_details" ForeColor="#AE1213" runat="server" Text="Details" Font-Size="X-Large"></asp:Label>
                        </td>
                               </tr>
        <tr>
            <td style="text-align:left">
                <asp:Label ID="lbl_name" runat="server" Text="Name :" Font-Bold="true" ></asp:Label>
                             <asp:DropDownList ID="ddl_title" runat="server" Width="60" ToolTip="Title"></asp:DropDownList>
                            <asp:Label ID="lbl_name_val" runat="server" Font-Bold="true" ToolTip="Name"></asp:Label>
                            <asp:RequiredFieldValidator ID="rfv_title" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_title" Style="margin-left: 10px;" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
            <td style="text-align:left">
                     <asp:Label ID="lbl_gender" runat="server" Text="Gender :" Font-Bold="true" Width="96%"></asp:Label>
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
             
                            <asp:TextBox ID="txt_email" runat="server" ToolTip="Email-ID" MaxLength="50" Width="96%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_email" runat="server" ErrorMessage="*Required" ControlToValidate="txt_email" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                            <asp:TextBoxWatermarkExtender ID="wm_email" runat="server" TargetControlID="txt_email" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="*Incorrect" CssClass="error_label_orange" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
          <tr>
        
                        <td style="text-align:left" >
                            <asp:Label ID="lbl_mobile" runat="server" Text="Mobile:" Font-Bold="true" Width="100%"></asp:Label>
                        </td>
         </tr>
        <tr>
            <td style="text-align:left">
                <asp:TextBox ID="txt_mobile" runat="server" ToolTip="Mobile Number" MaxLength="50" Width="96%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_mobile" runat="server" ErrorMessage="*Required" ControlToValidate="txt_mobile" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                            <asp:TextBoxWatermarkExtender ID="wm_mobile" runat="server" TargetControlID="txt_mobile" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator ID="rev_mobile" runat="server" ControlToValidate="txt_mobile" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^[+]?([0-9]*)$" CssClass="error_label_orange"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
                        <td style="text-align:left" >
                            <asp:Label ID="lbl_department" runat="server" Text="Department :" Font-Bold="true" Width="100%"></asp:Label>
                        </td>
         </tr>
        <tr>
                        <td>
                            <asp:DropDownList ID="ddl_department" runat="server" ToolTip="Department" Width="96%"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_department" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_department" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
        <tr>
                        <td style="text-align:left">
                            <asp:Label ID="lbl_designation" runat="server" Text="Designation :" Font-Bold="true" Width="100%"></asp:Label>
                        </td>
            </tr>
        <tr>
                        <td>
                            <asp:TextBox ID="txt_designation" runat="server" ToolTip="Designation" MaxLength="50" Width="96%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_designnation" runat="server" ErrorMessage="*Required" ControlToValidate="txt_designation" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                            <asp:TextBoxWatermarkExtender ID="wm_designation" runat="server" TargetControlID="txt_designation" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                        </td>
                    </tr>
      <tr>
       
            <td style="text-align:left">
                  <asp:Label ID="lbl_domain" runat="server" Text="Domain :" Font-Bold="true" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:TextBox ID="txt_domain" runat="server" Width="96%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                
              <asp:RequiredFieldValidator ID="rfv_domain" runat="server" ErrorMessage="*Required" ControlToValidate="txt_domain" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
             <asp:TextBoxWatermarkExtender ID="wm_domain" runat="server" TargetControlID="txt_domain" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td style="text-align:left">
                   <asp:Label ID="lbl_current_research" runat="server" Text="Current Research :" Font-Bold="true" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:TextBox ID="txt_current_research" runat="server" Width="96%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rfv_current_research" runat="server" ErrorMessage="*Required" ControlToValidate="txt_current_research" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
           <asp:TextBoxWatermarkExtender ID="wm_current_research" runat="server" TargetControlID="txt_current_research" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                 </td>
        </tr>
      
       
    <tr>
            <td>
                <asp:Button ID="btn_save" runat="server" Text="Save" Width="100px" CausesValidation="true" OnClick="btn_save_Click" style="background-color:#AE1213;color:white;" />
            </td>
        </tr>
        <tr>
            <td style="text-align:left">
                <asp:Label ID="lbl_error" runat="server" CssClass="error_label_red" Height="16px" Visible="false"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

