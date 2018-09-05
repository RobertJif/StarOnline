<%@ Page Language="VB" AutoEventWireup="false" CodeFile="adminlogin.aspx.vb" Inherits="UAS_page_adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Star Jaya | Login Admin</title>
        <link href="../style/csslogin.css" rel="Stylesheet" runat="server" />
   
    </head>
<body>
    <form id="form1" runat="server">
       <div id="kotakbesar">
             <div id="logoo">
                <asp:Image ID="logoo" runat="server" ImageUrl="~/UAS/image/logo.jpg" />
             </div>         
                <div id="tablelogin">
                    

                <table class="tablenya">
                    <tr>
                        <td class="ataskiri">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/UAS/image/sd.jpg" />
                        </td>
                        <td class="ataskanan">
                            <asp:TextBox ID="usertextbox" style="height:100%;width:98%" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="bawahuserkiri">
                        </td>
                        <td class="bawahuserkanan">
                        </td>
                    </tr>
                    <tr>
                        <td class="tengahkiri">
                           <asp:Image ID="password" runat="server" ImageUrl="~/UAS/image/sd.jpg" />
                        </td>
                        <td class="tengahkanan">
                            <asp:TextBox ID="passtextbox" style="height:100%;width:98%" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="bawahuserkiri">
                        </td>
                        <td class="bawahuserkanan">
                        </td>
                    </tr>
                    <tr>
                        <td class="bawah" colspan="2">
                            
                            <asp:Button ID="login" runat="server" Text="LOGIN" />
                            <asp:Button ID="reset" runat="server" Text="RESET" />
                            
                        </td>
                        
                    </tr>
                </table>

            

            </div>
        
        
    </div>
    

    </form>
    

</body>
</html>
