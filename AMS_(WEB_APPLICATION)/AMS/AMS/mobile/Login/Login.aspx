
<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/Master_Pages/Login_Master.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Login" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
  

    <table id="Table3" runat="server" align="left" cellpading="0" cellspacing="0" width="100%">
       
        <tr>
            <td>
            <table id="Table4" runat="server" width="100%">
               <tr>
                   <td>
                       <asp:Label ID="Label1" ForeColor="#AE1213" runat="server" Text="Alumni Login" Font-Size="X-Large">
                            </asp:Label>
                   </td>
               </tr>

                <tr>
                    <td>
                         <asp:TextBox ID="txt_username" runat="server" ToolTip="Username" Width="95%"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="wm_username" runat="server" TargetControlID="txt_username" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                    </td>
                </tr>
               
                <tr>
                <td style="width:95%">
                     <input id="txt_password" type="password" maxlength="50" runat="server" placeholder="Password" class="textboxwatermark_password" style="width:95%"/>
                </td>
                    </tr>
                <tr>
                         <td style="text-align:center">
                            <asp:Label ID="lbl_error" runat="server" CssClass="error_label_red " Height="16px" Visible="false"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td>
                         <asp:Button ID="btn_login" runat="server" Text="Login" Width="100%" OnClick="btn_login_Click"  CausesValidation="true" style="background-color:#AE1213;color:white;" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="ckb_remember" runat="server" Text="Remember Me" Font-Size="Smaller" />
                   </td>
                    </tr>
                <tr>
                    <td>
                        <%--<asp:LinkButton ID="lb_need_help" runat="server" Text="Need Help?" ForeColor="Black" Font-Underline="false" PostBackUrl="~/mobile/Forgot/Forgot_Home.aspx" CausesValidation="false" Font-Size="Smaller"></asp:LinkButton>--%>
                    </td>
                </tr>
            </table>
        </td>
        </tr>
    </table>


    
</asp:Content>




<asp:Content ID="Content3" runat="server" contentplaceholderid="cph_head">
    <style type="text/css">
        .auto-style1 {
            height: 28px;
        }
    </style>
</asp:Content>





