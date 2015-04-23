<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Change_Student_Details.aspx.cs" Inherits="Members_Add_Member" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="Server">
    <script language="javascript" src="../Script/Custom_JavaScript.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_body" runat="Server">
    <table runat="server" width="100%" cellspacing="20" cellpadding="0" visible="true">
        <tr>
            <td align="left" style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #585A59;">
                <asp:Label ID="lbl_change_account_settings" runat="server" Text="Change Account Settings" CssClass="page_header"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:Accordion ID="accordian_account_detail" runat="Server" AutoSize="None" FadeTransitions="true" TransitionDuration="250" FramesPerSecond="40" RequireOpenedPane="false"
        SuppressHeaderPostbacks="true" Height="100%" Width="80%" SelectedIndex="-1" HeaderCssClass="accordion_header" HeaderSelectedCssClass="accordion_selected_header" ContentCssClass="accordion_content" Style="margin-left: 10%;">
        <Panes>
            <asp:AccordionPane ID="ap_personal_details" runat="server">
                <Header>
                    <table width="100%">
                        <tr align="left">
                            <td style="height: 50px;" width="20%">
                                <asp:Label ID="lbl_personal_details" runat="server" Text="Personal Details" ForeColor="#AE1213" Font-Size="Large"></asp:Label>
                            </td>
                            <td width="80%">
                                <asp:Label ID="lbl_personal_details_val" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </Header>
                <Content>
                    <asp:Panel ID="pn_personal_details" runat="server" DefaultButton="btn_personal_details_save">
                        <table id="Table2" runat="server" width="100%" cellspacing="10" cellpadding="0">
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_first_name" runat="server" Text="First Name :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_first_name" runat="server" ValidationGroup="vg_personal_details" TabIndex="1"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_first_name" runat="server" TargetControlID="txt_first_name" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="txt_first_name" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_personal_details"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ControlToValidate="txt_first_name" ErrorMessage="*Incorrect" CssClass="error_label_orange" ValidationExpression="^([A-Z]*)([a-z]*)$" ValidationGroup="vg_personal_details"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_middle_name" runat="server" Text="Middle Name :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_middle_name" runat="server" ValidationGroup="vg_personal_details" TabIndex="2"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_middle_name" runat="server" TargetControlID="txt_middle_name" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RegularExpressionValidator ID="rev_middle_name" runat="server" ControlToValidate="txt_middle_name" ErrorMessage="*Incorrect" CssClass="error_label_orange" Display="Dynamic" ValidationExpression="^([A-Z]*)([a-z]*)$" ValidationGroup="vg_personal_details"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_last_name" runat="server" Text="Last Name :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_last_name" runat="server" ValidationGroup="vg_personal_details" TabIndex="3"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_last_name" runat="server" TargetControlID="txt_last_name" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator ID="rfv_last_name" runat="server" ErrorMessage="*Required" ControlToValidate="txt_last_name" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_personal_details"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rev_last_name" runat="server" Display="Dynamic" ControlToValidate="txt_last_name" ErrorMessage="*Incorrect" CssClass="error_label_orange" ValidationExpression="^([A-Z]*)([a-z]*)$" ValidationGroup="vg_personal_details"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_dob" runat="server" Text="BirthDate :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_dob" runat="server" Style="text-align: center;" ToolTip="Birthdate" ReadOnly="true" ValidationGroup="vg_personal_details" TabIndex="4"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv_dob" runat="server" ErrorMessage="*Required" ControlToValidate="txt_dob" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_personal_details"></asp:RequiredFieldValidator>
                                    <asp:CalendarExtender ID="ce_dob" runat="server" TargetControlID="txt_dob" Format="dd/MM/yyyy" DaysModeTitleFormat="dd/MM/yyyy" DefaultView="Years" TodaysDateFormat="dd/MM/yyyy"></asp:CalendarExtender>
                                    <asp:TextBoxWatermarkExtender ID="wm_dob" runat="server" TargetControlID="txt_dob" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RegularExpressionValidator ID="rev_dob" runat="server" ControlToValidate="txt_dob" Display="Dynamic" ErrorMessage="*Incorrect" CssClass="error_label_orange" ValidationExpression="^[0-3]?[0-9][/][0-1]?[0-9][/][0-9][0-9][0-9][0-9]$" ValidationGroup="vg_personal_details"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_gender" runat="server" Text="Gender :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:DropDownList ID="ddl_gender" runat="server" ToolTip="Gender" ValidationGroup="vg_personal_details" TabIndex="5"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfv_gender" runat="server" ErrorMessage="*Invalid" ControlToValidate="ddl_gender" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_personal_details"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_relation_status" runat="server" Text="Relationship Status :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:DropDownList ID="ddl_relationship_status" runat="server" ValidationGroup="vg_personal_details" TabIndex="6"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_conpany_name" runat="server" Text="Company Name :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_company_name" runat="server" ValidationGroup="vg_personal_details" TabIndex="7"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_company_name" runat="server" TargetControlID="txt_company_name" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_designation" runat="server" Text="Designation :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_designation" runat="server" ValidationGroup="vg_personal_details" TabIndex="8"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_designation" runat="server" TargetControlID="txt_designation" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Button ID="btn_personal_details_cancel" runat="server" Text="Cancel" Style="margin-top: 20px;" CausesValidation="false" OnClick="btn_cancel_Click" TabIndex="10" />
                                </td>
                                <td align="left" width="50%">
                                    <asp:Button ID="btn_personal_details_save" runat="server" Text="Save" Style="margin-top: 20px; margin-left: 20px;" CausesValidation="true" ValidationGroup="vg_personal_details" OnClick="btn_personal_details_save_Click" TabIndex="9" />
                                    <asp:Label ID="lbl_personal_details_error" runat="server" CssClass="error_label_red"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="ap_contact_details" runat="server">
                <Header>
                    <table width="100%">
                        <tr align="left">
                            <td style="height: 50px;" width="20%">
                                <asp:Label ID="lbl_contact_details" runat="server" Text="Contact Details" ForeColor="#AE1213" Font-Size="Large"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbl_contact_details_val" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </Header>
                <Content>
                    <asp:Panel ID="pn_contact_details" runat="server" DefaultButton="btn_contact_details_save">
                        <table id="Table3" runat="server" width="100%" cellspacing="10" cellpadding="0">
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_email" runat="server" Text="Email :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_email" runat="server" ToolTip="Email-ID" MaxLength="50" ValidationGroup="vg_contact_details" TabIndex="1"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_email" runat="server" TargetControlID="txt_email" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator ID="rfv_email" runat="server" ErrorMessage="*Required" ControlToValidate="txt_email" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_contact_details"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="*Incorrect" CssClass="error_label_orange" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vg_contact_details"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_mobile" runat="server" Text="Mobile :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_country_code" runat="server" Width="40px" ToolTip="Country Code" MaxLength="5" ValidationGroup="vg_contact_details" TabIndex="2"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv_country_code" runat="server" ControlToValidate="txt_country_code" Display="Dynamic" ErrorMessage="*" CssClass="error_label_red" ValidationGroup="vg_contact_details"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rev_country_code" runat="server" ControlToValidate="txt_country_code" Display="Dynamic" ErrorMessage="*" ValidationExpression="^[+]{1}(\d{1,5})$" ForeColor="#FF6600" ValidationGroup="vg_contact_details"></asp:RegularExpressionValidator>
                                    <asp:Label ID="lbl_country_code" runat="server" Text="-"></asp:Label>
                                    <asp:TextBoxWatermarkExtender ID="wm_country_code" runat="server" TargetControlID="txt_country_code" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:TextBox ID="txt_mobile" runat="server" Width="80px" ToolTip="Mobile" MaxLength="50" ValidationGroup="vg_contact_details" TabIndex="3"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_mobile" runat="server" TargetControlID="txt_mobile" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RegularExpressionValidator ID="rev_mobile" runat="server" ControlToValidate="txt_mobile" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^[+]?(\d{10})$" ForeColor="#FF6600" ValidationGroup="vg_contact_details"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="rfv_mobile" runat="server" ControlToValidate="txt_mobile" Display="Dynamic" ErrorMessage="*Required" CssClass="error_label_red" ValidationGroup="vg_contact_details"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_landline" runat="server" Text="Landline :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_landline" runat="server" ToolTip="Landline" ValidationGroup="vg_contact_details" TabIndex="4"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_landline" runat="server" TargetControlID="txt_landline" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RegularExpressionValidator ID="rev_landline" runat="server" ControlToValidate="txt_landline" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^[+]?([0-9]*)$" CssClass="error_label_orange" ValidationGroup="vg_contact_details"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Button ID="btn_contact_details_cancel" runat="server" Text="Cancel" Style="margin-top: 20px;" CausesValidation="false" OnClick="btn_cancel_Click" TabIndex="6" />
                                </td>
                                <td align="left" width="50%">
                                    <asp:Button ID="btn_contact_details_save" runat="server" Text="Save" Style="margin-top: 20px; margin-left: 20px;" CausesValidation="true" ValidationGroup="vg_contact_details" OnClick="btn_contact_details_save_Click" TabIndex="5" />
                                    <asp:Label ID="lbl_contact_details_error" runat="server" CssClass="error_label_red"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="ap_mailing_address_save" runat="server">
                <Header>
                    <table width="100%">
                        <tr align="left">
                            <td style="height: 50px;" width="20%">
                                <asp:Label ID="lbl_mailing_address" runat="server" Text="Mailing Address" ForeColor="#AE1213" Font-Size="Large"></asp:Label>
                            </td>
                            <td width="80%">
                                <asp:Label ID="lbl_mailing_address_val" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </Header>
                <Content>
                    <asp:Panel ID="pn_mailing_address" runat="server" DefaultButton="btn_mailing_address_save">
                        <table id="Table4" runat="server" width="100%" cellspacing="10" cellpadding="0">
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_country" runat="server" Text="Counrty :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:DropDownList ID="ddl_country" runat="server" ToolTip="Country" ValidationGroup="vg_mailing_address" TabIndex="1"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfv_country" runat="server" ErrorMessage="*Required" ControlToValidate="ddl_country" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_mailing_address"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_line1" runat="server" Text="Address Line1 :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_line1" runat="server" ToolTip="Address Line" MaxLength="50" ValidationGroup="vg_mailing_address" TabIndex="2"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_line1" runat="server" TargetControlID="txt_line1" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator ID="rfv_line1" runat="server" ErrorMessage="*Required" ControlToValidate="txt_line1" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_mailing_address"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_line2" runat="server" Text="Address Line2 :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_line2" runat="server" ValidationGroup="vg_mailing_address" TabIndex="3"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_line2" runat="server" TargetControlID="txt_line2" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_city" runat="server" Text="City :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_city" runat="server" ToolTip="City" MaxLength="50" ValidationGroup="vg_mailing_address" TabIndex="4"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_city" runat="server" TargetControlID="txt_city" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator ID="rfv_city" runat="server" ErrorMessage="*Required" ControlToValidate="txt_city" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_mailing_address"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_state" runat="server" Text="State/Province :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_state" runat="server" ToolTip="State/Province" MaxLength="50" ValidationGroup="vg_mailing_address" TabIndex="5"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_state" runat="server" TargetControlID="txt_state" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator ID="rfv_state" runat="server" ErrorMessage="*Required" ControlToValidate="txt_state" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_mailing_address"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_pincode" runat="server" Text="Zip/Postal Code :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_pincode" runat="server" ToolTip="Zip/Postal Code" MaxLength="50" ValidationGroup="vg_mailing_address" TabIndex="6"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_pincode" runat="server" TargetControlID="txt_pincode" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator ID="rfv_pincode" runat="server" ErrorMessage="*Required" ControlToValidate="txt_pincode" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_mailing_address"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rev_pincode" runat="server" ControlToValidate="txt_pincode" Display="Dynamic" ErrorMessage="*Incorrect" ValidationExpression="^([0-9]*)$" CssClass="error_label_orange" ValidationGroup="vg_mailing_address"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Button ID="btn_mailing_address_cancel" runat="server" Text="Cancel" Style="margin-top: 20px;" CausesValidation="false" OnClick="btn_cancel_Click" TabIndex="8" />
                                </td>
                                <td align="left" width="50%">
                                    <asp:Button ID="btn_mailing_address_save" runat="server" Text="Save" Style="margin-top: 20px; margin-left: 20px;" CausesValidation="true" OnClick="btn_mailing_address_save_Click" ValidationGroup="vg_mailing_address" TabIndex="7" />
                                    <asp:Label ID="lbl_mailing_address_error" runat="server" CssClass="error_label_red"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="ap_username" runat="server">
                <Header>
                    <table width="100%">
                        <tr align="left">
                            <td style="height: 50px;" width="20%">
                                <asp:Label ID="lbl_header_username" runat="server" Text="Username" ForeColor="#AE1213" Font-Size="Large"></asp:Label>
                            </td>
                            <td width="80%">
                                <asp:Label ID="lbl_header_username_val" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </Header>
                <Content>
                    <asp:Panel ID="pn_username" runat="server" DefaultButton="btn_username_save">
                        <table id="Table1" runat="server" width="100%" cellspacing="10" cellpadding="0">
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_username" runat="server" Text="Username :"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_username" runat="server" MaxLength="50" ToolTip="Username" ValidationGroup="vg_username"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_username" runat="server" TargetControlID="txt_username" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator ID="rfv_username" runat="server" ErrorMessage="*Required" ControlToValidate="txt_username" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_username"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rev_username" runat="server" ControlToValidate="txt_username" Display="Dynamic" CssClass="error_label_red" ErrorMessage="*Minimum Username Length is 5" ValidationExpression="^.{5,50}$" SetFocusOnError="True" ValidationGroup="vg_username"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Button ID="btn_username_cancel" runat="server" Text="Cancel" Style="margin-top: 20px;" CausesValidation="false" OnClick="btn_cancel_Click" />
                                </td>
                                <td align="left" width="50%">
                                    <asp:Button ID="btn_username_save" runat="server" Text="Save" Style="margin-top: 20px; margin-left: 20px;" CausesValidation="true" ValidationGroup="vg_username" OnClick="btn_username_save_Click" />
                                    <asp:Label ID="lbl_username_error" runat="server" CssClass="error_label_red"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="ap_password" runat="server">
                <Header>
                    <table width="100%">
                        <tr align="left">
                            <td style="height: 50px;">
                                <asp:Label ID="lbl_header_password" runat="server" Text="Password" ForeColor="#AE1213" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </Header>
                <Content>
                    <asp:Panel ID="pn_password" runat="server" DefaultButton="btn_password_save">
                        <table id="Table5" runat="server" width="100%" cellspacing="10" cellpadding="0">
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_current_password" runat="server" Text="Current Password : "></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <input type="password" id="txt_current_password" runat="server" placeholder="Current Password" maxlength="50" title="Current Password" />
                                    <%--<asp:TextBox ID="txt_current_password" runat="server" ToolTip="Current Password" MaxLength="50" ValidationGroup="vg_password" OnPreRender="txt_password_PreRender" TabIndex="1"></asp:TextBox>--%>
                                    <%--<asp:TextBoxWatermarkExtender ID="wm_current_password" runat="server" TargetControlID="txt_current_password" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>--%>
                                    <asp:RequiredFieldValidator ID="rfv_current_password" runat="server" ErrorMessage="*Required" ControlToValidate="txt_current_password" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_password"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr height="45px" valign="top">
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_new_password" runat="server" Text="New Password : "></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_new_password" runat="server" ToolTip="Password" MaxLength="50" ValidationGroup="vg_password" TabIndex="2"></asp:TextBox>
                                    <asp:PasswordStrength ID="ps_new_password" runat="server"
                                        TargetControlID="txt_new_password"
                                        DisplayPosition="BelowLeft"
                                        StrengthIndicatorType="Text"
                                        PreferredPasswordLength="8"
                                        PrefixText="Strength:"
                                        MinimumNumericCharacters="1"
                                        MinimumSymbolCharacters="1"
                                        RequiresUpperAndLowerCaseCharacters="false"
                                        TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent"
                                        CalculationWeightings="50;15;15;20" TextCssClass="passwordstrength_text" />
                                    <asp:TextBoxWatermarkExtender ID="wm_new_password" runat="server" TargetControlID="txt_new_password" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RegularExpressionValidator ID="rev_new_password" runat="server" ControlToValidate="txt_new_password" Display="Dynamic" CssClass="error_label_red" ErrorMessage="*Minimum Password Length is 8" ValidationExpression="^.{8,50}$" SetFocusOnError="True" ValidationGroup="vg_password"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="rfv_new_password" runat="server" ErrorMessage="*Required" ControlToValidate="txt_new_password" Display="Dynamic" CssClass="error_label_red" ValidationGroup="vg_password"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Label ID="lbl_confirm_password" runat="server" Text="Confirm Password :" Width="165"></asp:Label>
                                </td>
                                <td align="left" width="50%">
                                    <asp:TextBox ID="txt_confirm_password" runat="server" ToolTip="Confirm Password" MaxLength="50" ValidationGroup="vg_password" TabIndex="3"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="wm_confirm_password" runat="server" TargetControlID="txt_confirm_password" WatermarkCssClass="textboxwatermark"></asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator ID="rfv_confirm_password" runat="server" ErrorMessage="Password Mismatch" ControlToValidate="txt_confirm_password" Display="Dynamic" CssClass="error_label_orange" ValidationGroup="vg_password"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="compare_password" runat="server" ErrorMessage="Password Mismatch" Display="Dynamic" ValidationGroup="vg_password"
                                        ForeColor="#FF6600" ControlToCompare="txt_new_password" ControlToValidate="txt_confirm_password" CssClass="error_label_orange" SetFocusOnError="True"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="50%">
                                    <asp:Button ID="btn_password_cancel" runat="server" Text="Cancel" Style="margin-top: 20px;" CausesValidation="false" OnClick="btn_cancel_Click" />
                                </td>
                                <td align="left" width="50%">
                                    <asp:Button ID="btn_password_save" runat="server" Text="Save" Style="margin-top: 20px; margin-left: 20px;" CausesValidation="true" ValidationGroup="vg_password" OnClick="btn_password_save_Click" TabIndex="4" />
                                    <asp:Label ID="lbl_password_error" runat="server" CssClass="error_label_red"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </Content>
            </asp:AccordionPane>
        </Panes>
    </asp:Accordion>
</asp:Content>
