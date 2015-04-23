<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Change_Faculty_Details.aspx.cs" Inherits="Account_Settings_Change_Faculty_Details" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <asp:Accordion ID="accordion" runat="Server" AutoSize="None" FadeTransitions="true" TransitionDuration="250" FramesPerSecond="40" RequireOpenedPane="false"
        SuppressHeaderPostbacks="true" Height="100%" Width="100%" SelectedIndex="-1">
        <Panes>
            <asp:AccordionPane ID="AccordionPane1" runat="server">
                <Header>
                    <asp:Label ID="Label22" runat="server" Text="Name" CssClass="table_headercell" Width="100%"></asp:Label>
                </Header>
                <Content>
                    <table id="Table1" runat="server" width="100%" cellspacing="20" cellpadding="0">
                        <tr style="height: 25px;">
                            <td style="text-align: left" align="left">
                                <asp:TextBox ID="txt_first_name" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_first_name" runat="server" TargetControlID="txt_first_name" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            </td>
                            <td style="text-align: left" align="left">
                                <asp:TextBox ID="txt_middle_name" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_middle_name" runat="server" TargetControlID="txt_middle_name" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            </td>
                            <td style="text-align: left" align="left">
                                <asp:TextBox ID="txt_last_name" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_last_name" runat="server" TargetControlID="txt_last_name" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr valign="top" style="height: 25px;">
                            <td style="text-align: left"></td>
                            <td style="text-align: left" align="center">
                                <asp:RequiredFieldValidator ID="rfv_first_name" runat="server" ErrorMessage="*Required" ControlToValidate="txt_first_name" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rev_first_name" runat="server" Display="Dynamic" ControlToValidate="txt_first_name" ErrorMessage="*Incorrect" ForeColor="#FF6600" ValidationExpression="^([A-Z]*)([a-z]*)$"></asp:RegularExpressionValidator>
                            </td>
                            <td style="text-align: left" align="center">
                                <asp:RegularExpressionValidator ID="rev_middle_name" runat="server" ControlToValidate="txt_middle_name" ErrorMessage="*Incorrect" ForeColor="#FF6600" Display="Dynamic" ValidationExpression="^([A-Z]*)([a-z]*)$"></asp:RegularExpressionValidator>
                            </td>
                            <td style="text-align: left" align="center">
                                <asp:RequiredFieldValidator ID="rfv_last_name" runat="server" ErrorMessage="*Required" ControlToValidate="txt_last_name" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rev_last_name" runat="server" ControlToValidate="txt_last_name" ErrorMessage="*Incorrect" Display="Dynamic" ForeColor="#FF6600" ValidationExpression="^([A-Z]*)([a-z]*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AccordionPane2" runat="server">
                <Header>
                    <asp:Label ID="Label1" runat="server" Text="Department Details" CssClass="table_headercell" Width="100%"></asp:Label>
                </Header>
                <Content>
                    <table id="Table2" runat="server" width="100%" cellpadding="0" cellspacing="20">
                        <tr>
                            <td>
                                <asp:Label ID="lbl_department" runat="server" Text="Department :"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddl_department" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfv_department" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_department" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_designation" runat="server" Text="Designation :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txt_designation" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_designnation" runat="server" ErrorMessage="*Required" ControlToValidate="txt_designation" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AccordianPane7" runat="server">
                <Header>
                    <asp:Label ID="Label4" runat="server" Text="Research Details" CssClass="table_headercell" Width="100%"></asp:Label>
                </Header>
                <Content>
                    <table id="Table8" runat="server" cellpadding="10" cellspacing="0" width="50%">
                        <tr>
                            <td align="right" width="40%">
                                <asp:Label ID="lbl_domain" runat="server" Text="Domain :"></asp:Label>
                            </td>
                            <td align="left" width="60%">
                                <asp:TextBox ID="txt_domain" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" width="40%">
                                <asp:Label ID="lbl_current_research" runat="server" Text="Current Research :"></asp:Label>
                            </td>
                            <td align="left" width="60%">
                                <asp:TextBox ID="txt_current_research" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AccordionPane3" runat="server">
                <Header>
                    <asp:Label ID="Label11" runat="server" Text="Contact Details" CssClass="table_headercell" Width="100%"></asp:Label>
                </Header>
                <Content>
                    <table id="Table3" runat="server" width="100%" cellspacing="20" cellpadding="0">
                        <tr>
                            <td style="text-align: left" align="right" width="40%">
                                <asp:Label ID="lbl_email" runat="server" Text="Email :"></asp:Label>
                            </td>
                            <td style="text-align: left" align="left" width="60%">
                                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_email" runat="server" TargetControlID="txt_email" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                <asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="*Incorrect" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left" align="right" width="40%">
                                <asp:Label ID="lbl_mobile" runat="server" Text="Mobile :"></asp:Label>
                            </td>
                            <td style="text-align: left" align="left" width="60%">
                                <asp:TextBox ID="txt_mobile" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_mobile" runat="server" TargetControlID="txt_mobile" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                <asp:RegularExpressionValidator ID="rev_mobile" runat="server" ControlToValidate="txt_mobile" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^[+]?([0-9]*)$" ForeColor="#FF6600"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AccordianPane6" runat="server">
                <Header>
                    <asp:Label ID="Label3" runat="server" Text="Username" CssClass="table_headercell" Width="100%"></asp:Label>
                </Header>
                <Content>
                    <table id="Table7" runat="server" width="100%" cellspacing="20" cellpadding="0">
                        <tr>
                            <td style="text-align: left">
                                <asp:Label ID="lbl_name" runat="server" Text="Username :"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_username" runat="server" TargetControlID="txt_username" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                <asp:RequiredFieldValidator ID="rfv_username" runat="server" ErrorMessage="*Required" ControlToValidate="txt_username" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rev_usernamename" runat="server" Display="Dynamic" ControlToValidate="txt_username" ErrorMessage="*Incorrect" ForeColor="#FF6600" ValidationExpression="^([A-Z]*)([a-z]*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        </td>
                    </table>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AccordionPane5" runat="server">
                <Header>
                    <asp:Label ID="Label2" runat="server" Text="Change Password" CssClass="table_headercell" Width="100%"></asp:Label>
                </Header>
                <Content>
                    <table id="Table6" runat="server" width="100%" cellspacing="20" cellpadding="0">

                        <tr>
                            <td style="text-align: left">
                                <asp:Label ID="lbl_opassword" runat="server" Text="Old Password :"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txt_opassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_opassword" runat="server" TargetControlID="txt_opassword" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>

                                <asp:RequiredFieldValidator ID="rfv_opassword" runat="server" ErrorMessage="*Required" ControlToValidate="txt_opassword" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rev_opassword" runat="server" Display="Dynamic" ControlToValidate="txt_opassword" ErrorMessage="*Incorrect" ForeColor="#FF6600" ValidationExpression="^([A-Z]*)([a-z]*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">

                                <asp:Label ID="lbl_npassword" runat="server" Text="New Password :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txt_npassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_npassword" runat="server" TargetControlID="txt_npassword" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>

                                <asp:RequiredFieldValidator ID="rfv_npassword" runat="server" ErrorMessage="*Required" ControlToValidate="txt_npassword" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rev_npassword" runat="server" Display="Dynamic" ControlToValidate="txt_npassword" ErrorMessage="*Incorrect" ForeColor="#FF6600" ValidationExpression="^([A-Z]*)([a-z]*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                <asp:Label ID="lbl_cpassword" runat="server" Text="Confirm Password :"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txt_cpassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="wm_cpassword" runat="server" TargetControlID="txt_cpassword" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                <asp:RequiredFieldValidator ID="rfv_cpassword" runat="server" ErrorMessage="*Required" ControlToValidate="txt_npassword" Display="Dynamic" ForeColor="#AE1213"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rev_cpassword" runat="server" Display="Dynamic" ControlToValidate="txt_npassword" ErrorMessage="*Incorrect" ForeColor="#FF6600" ValidationExpression="^([A-Z]*)([a-z]*)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
                </Content>
            </asp:AccordionPane>
        </Panes>
    </asp:Accordion>
    <table id="Table4" runat="server" cellpadding="10" cellspacing="0" width="100%">
        <tr align="center">
            <td style="border-top-style: solid; border-width: 1px; border-color: #585A59; padding: 10px; padding-left: 20px; padding-right: 10px; align-content: center;">
                <asp:Button ID="btn_add" runat="server" Text="Save" />
                <%--<asp:Label ID="lbl_error" runat="server"></asp:Label>--%>
            </td>
        </tr>
    </table>
    <table id="Table9" runat="server" width="100%" cellpadding="0" visible="false">
        <tr>
            <td style="text-align: left">
                <asp:Image ID="img_done" runat="server" Style="width: 200px" ImageUrl="~/images/done.jpg" />
            </td>
            <td style="text-align: left">
                <asp:Label ID="lbl_msg" Text="Changes Saved!" ForeColor="#AE1213" runat="server" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left" colspan="2" align="center">
                <asp:Button ID="btn_back_done" runat="server" Text="Back" />
            </td>
        </tr>
    </table>
    <table id="Table10" runat="server" width="100%" cellpadding="0" visible="false">
        <tr>
            <td style="text-align: left">
                <asp:Image ID="img_error" runat="server" Style="width: 200px" ImageUrl="~/images/error_image.jpg" />
            </td>
            <td style="text-align: left">
                <asp:Label ID="lbl_error" Text="User Already Exists" ForeColor="#AE1213" runat="server" Font-Size="X-Large">
                </asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left" colspan="2">
                <asp:Button ID="btn_back_error" runat="server" Text="Back" />
            </td>
        </tr>
    </table>
</asp:Content>
