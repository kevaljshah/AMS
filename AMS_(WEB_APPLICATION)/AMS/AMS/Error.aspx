<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="CSS/style.css" rel="stylesheet" />
    <title></title>
</head>
<body style="height: 100%; background-color: white; background-size: cover; background-repeat: no-repeat">
    <div style="height: 300px"></div>
    <div style="width: 100%; height: 100%; vertical-align: central; align-items: center">
        <table id="Table3" style="width: 100%; margin-top: auto; margin-bottom: auto">
            <tr>
                <td style="color: #AE1213; font-size: 200px; text-align: center">
                    <asp:Label ID="exc" Text="!" runat="server" />
                </td>
            </tr>
            <tr style="width: 100%">
                <td style="background-color: #AE1213; width: 100%; height: 100px; text-align: center">
                    <asp:Label ID="Label2" ForeColor="white" runat="server" Text="The Server Encountered An Internal Error, Please Try Again Later!" Font-Size="X-Large" />
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
        </table>
    </div>
</body>
</html>
