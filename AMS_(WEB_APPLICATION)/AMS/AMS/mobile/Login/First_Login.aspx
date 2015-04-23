<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="First_Login.aspx.cs" Inherits="Login_First_Login" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table id="Table3" runat="server" align="left" cellpading="0" cellspacing="0" width="100%">
 
     
       <tr>
           <td style="text-align:left">
                <asp:Label ID="lbl_username" runat="server" Text="New Username : " Font-Bold="True" Width="100%"></asp:Label>
           </td>
       </tr>
    
       <tr>
           <td>
              <asp:TextBox ID="txt_username" runat="server" MaxLength="50" ToolTip="Username" Width="95%"></asp:TextBox>

                                <asp:TextBoxWatermarkExtender ID="wm_username" runat="server" TargetControlID="txt_username" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                <asp:Label ID="lbl_username_exists" runat="server" Text="Username already Exists" Visible="false" CssClass="error_label_red" Width="210"></asp:Label>
                                <asp:RequiredFieldValidator ID="rfv_username" runat="server" ErrorMessage="*Required" ControlToValidate="txt_username" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rev_username" runat="server" ControlToValidate="txt_username" Display="Dynamic" CssClass="error_label_red" ErrorMessage="*Minimum Username Length is 5" ValidationExpression="^.{5,50}$" SetFocusOnError="True"></asp:RegularExpressionValidator>
           </td>
       </tr>
      
       <tr>
           <td style="text-align:left">
                <asp:Label ID="lbl_password" runat="server" Text="New Password : " Font-Bold="True" Width="100%"></asp:Label>
           </td>
       </tr>
       <tr>
<td style="text-align:left">
               <asp:TextBox ID="txt_password" TextMode="Password" runat="server" ToolTip="Password" MaxLength="50" Width="50%" OnPreRender="txt_password_PreRender"></asp:TextBox>
    
   
                                <asp:PasswordStrength ID="ps_password" runat="server"
                                    TargetControlID="txt_password"
                                    DisplayPosition="RightSide"
                                    StrengthIndicatorType="Text"
                                    PreferredPasswordLength="8"
                                    PrefixText="Strength:"
                                    MinimumNumericCharacters="1"
                                    MinimumSymbolCharacters="1"
                                    RequiresUpperAndLowerCaseCharacters="false"
                                    TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent"
                                    CalculationWeightings="50;15;15;20" TextCssClass="passwordstrength_text" />
                </td>
            </tr>
        <tr>
            <td>
                                <asp:TextBoxWatermarkExtender ID="wm_password" runat="server" TargetControlID="txt_password" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                <asp:RegularExpressionValidator ID="rev_password" runat="server" ControlToValidate="txt_password" Display="Dynamic" CssClass="error_label_red" ErrorMessage="*Minimum Password Length is 8" ValidationExpression="^.{8,50}$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ControlToValidate="txt_password" Display="Dynamic" CssClass="error_label_red"></asp:RequiredFieldValidator>
           </td>
       </tr>
     <tr>
           <td style="text-align:left">
                                <asp:Label ID="lbl_confirm_password" runat="server" Text="Confirm Password :" Width="100%" Font-Bold="true"></asp:Label>
                            </td>
         </tr>
        <tr>
                            <td>
                                <asp:TextBox ID="txt_confirm_password" TextMode="Password" runat="server" ToolTip="Confirm Password" MaxLength="50" OnPreRender="txt_password_PreRender" Width="50%"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_confirm_password" runat="server" TargetControlID="txt_confirm_password" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                <asp:RequiredFieldValidator ID="rfv_confirm_password" runat="server" ErrorMessage="Password Mismatch" ControlToValidate="txt_confirm_password" Display="Dynamic" CssClass="error_label_orange"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="compare_password" runat="server" ErrorMessage="Password Mismatch" Display="Dynamic"
                                    ForeColor="#FF6600" ControlToCompare="txt_password" ControlToValidate="txt_confirm_password" CssClass="error_label_orange" SetFocusOnError="True"></asp:CompareValidator>
                            </td>
                        </tr>
       <tr>
           <td>
                 <asp:Button ID="btn_save" runat="server" Text="Save" Width="100%" CausesValidation="true" OnClick="btn_save_Click" style="background-color:#AE1213;color:white;" />
           </td>
       </tr>
    
       <tr>
           <td style="text-align:left">
               <asp:Label ID="lbl_error" runat="server"></asp:Label>
           </td>
       </tr>
       </table>
</asp:Content>

