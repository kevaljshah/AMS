<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="CSS/style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="part5" style="width: 100%; min-height: 643px; overflow: visible;">
                <table id="Table3" width="100%" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="left">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/error_page.jpg" Style="height: auto; width: auto; max-height: 550px; max-width: 750px" ImageAlign="AbsMiddle" />
                            <asp:Label ID="Label2" ForeColor="#AE1213" runat="server" Text="The Server Encountered An Internal Error, Please Try Again Later" Font-Size="X-Large">
                            </asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
