<%@ Page Language="VB" AutoEventWireup="false" CodeFile="loginadmin.aspx.vb" Inherits="UAS_loginadmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .logoberanda
        {
            border-top-left-radius: 150px;
            border-top-right-radius: 150px;
            border-bottom-left-radius: 150px;
            border-bottom-right-radius: 150px;
        }
        
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 50px;
        }
        .style4
        {
            height: 50px;
            width: 18px;
        }
        .style7
        {
            height: 40px;
            }
        .style8
        {
            font-family: "Comic Sans MS";
            font-size: xx-large;
        }
        .style10
        {
            height: 15px;
            width: 18px;
        }
        .style11
        {
            height: 15px;
        }
        .style12
        {
            height: 50px;
            width: 6px;
        }
        .style13
        {
            height: 15px;
            width: 6px;
        }
        .style14
        {
            height: 50px;
            width: 18px;
            font-size: xx-large;
        }
    </style>
</head>
<body style="background-image:url('image/asd.jpg');background-repeat:repeat;height:600px">
    
    <form id="form1" runat="server">
    <div id="logo" style="margin:auto;margin-top:1px;margin-left:500px;height:125px;width:953px;">
     </div>
    <!-- <div id="tanggal" style="margin-left:910px" >
        <asp:Label ID="tanggal" style="color:White" runat="server" Font-Names="Adobe Caslon Pro Bold" 
            Font-Size="Large"></asp:Label>
    </div>-->
    
    <div id="kotaklogin" style="height:460px;width:600px;margin:auto;background-image:url('image/ass.jpg')">
    
        <table class="style1">
            <tr>
                <td colspan="3" style="text-align:center;color:White" class="style8">
                    <asp:Image style="height:125px;width:300px" ID="logodilogin" cssclass="logoberanda" runat="server" ImageUrl="~/UAS/image/logo.jpg" />
   
                    </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Image ID="iconuser" runat="server" ImageUrl="~/UAS/image/user.png" 
                        style="height:75px;width:75px;margin-left:40px" />
                </td>
                <td class="style14">
                    <strong>:</strong></td>
                <td class="style2">
                    <asp:TextBox ID="userTextbox" style="width:300px;height:65px" runat="server" 
                        BackColor="#999999" ForeColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style13">
                </td>
                <td class="style10">
                </td>
                <td class="style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="userTextbox" 
                        ErrorMessage="Username salah atau belum diisi...!" Font-Names="Comic Sans MS" 
                        style="font-size: medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Image ID="iconpassword"  runat="server" ImageUrl="~/UAS/image/paswd.png" 
                        style="height:75px;width:75px;margin-left:40px" />
                </td>
                <td class="style14">
                    <strong>:</strong></td>
                <td class="style2">
                    <asp:TextBox ID="passwordTextbox" style="width:300px;height:65px" 
                        runat="server" BackColor="#999999" ForeColor="White"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style13">
                </td>
                <td class="style10">
                </td>
                <td class="style11">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="passwordTextbox" 
                        ErrorMessage="Password Salah atau Belum Diisi...!" Font-Names="Comic Sans MS"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style7" colspan="3">
                    <asp:Button ID="loginbutton" style="margin-left:175px;height:30px;width:60px" runat="server" Text="Log In" />
                    <asp:Button ID="resetbutton" style="margin-left:50px;height:30px;width:60px" runat="server" Text="Reset" />
                </td>
            </tr>
        </table>
    
    </div>
   
    </form>
    
</body>
</html>
