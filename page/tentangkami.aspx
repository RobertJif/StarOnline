<%@ Page Language="VB" AutoEventWireup="false" CodeFile="tentangkami.aspx.vb" Inherits="UAS_tentangkami" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Welcome to Star Jaya!</title>
    <link id="Link1" href="~/UAS/style/css.css" rel="Stylesheet" runat="server" />
    <style type="text/css">
        .style1
        {
            width: 18px;
        }
        .style2
        {
            width: 75px;
        }
        .style3
        {
            width: 40px;
        }
    </style>
</head>
<body>
       <div id="logodanfitur">
            <div id="logo">
              
            
        
            <div id="fitur" >
                <div id="iconfitur">
                    <asp:Image ID="iconberanda" runat="server" ImageUrl="~/UAS/image/home.png" />
                    <asp:Image ID="iconproduk" runat="server" ImageUrl="~/UAS/image/PRODUCT.png" />
                    <asp:Image ID="iconfaq" runat="server" ImageUrl="~/UAS/image/FAQ.png"/>
                    <asp:Image ID="icontentangkami" runat="server" ImageUrl="~/UAS/image/ab.png" />  
                </div>
        
                <div id="menufitur">
                <asp:HyperLink ID="beranda" runat="server" NavigateUrl="~/UAS/page/berandaa.aspx">BERANDA</asp:HyperLink>
                <asp:HyperLink ID="produk" style="margin-left:30px" runat="server" NavigateUrl="~/UAS/page/produk.aspx">PRODUK</asp:HyperLink>
                <asp:HyperLink ID="faq" style="margin-left:45px" runat="server" NavigateUrl="~/UAS/page/faq.aspx">&nbsp;&nbsp;FAQ</asp:HyperLink>
                <asp:HyperLink ID="tentangkami" style="margin-left:25px" runat="server" NavigateUrl="~/UAS/page/tentangkami.aspx">&nbsp;TENTANG KAMI</asp:HyperLink>
                </div>
            </div>
            </div>
        </div>
    
        
        

        <div id="contenttentangkami">
            <p style="font-family:Tw Cen MT;text-align:left;font-size:30pt"> Star Jaya @ Kontak </p>
            <table class="tablekecil" style="margin:auto;margin-left:150px;font-family:HelvLight" >
                <tr>
                    <td class="style3">
                        <asp:Image ID="Image1"  style="height:35px;width:35px" runat="server" ImageUrl="~/UAS/image/dribble.png" /></td>
                    <td class="style2">
                        Alamat</td>
                    <td class="style1">
                        :</td>
                    <td>
                        Jalan H. Imam Munandar 349 E/F</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style1">
                        &nbsp;</td>
                    <td>
                        Pekanbaru</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style1">
                        &nbsp;</td>
                    <td>
                        Riau</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Image ID="Image2"  style="height:35px;width:35px" runat="server" ImageUrl="~/UAS/image/dribble.png" /></td>
                    <td class="style2">
                        Kode Pos</td>
                    <td class="style1">
                        :</td>
                    <td>
                        28144</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Image ID="Image3"  style="height:35px;width:35px" runat="server" ImageUrl="~/UAS/image/dribble.png" /></td>
                    <td class="style2">
                        E-mail</td>
                    <td class="style1">
                        :</td>
                    <td>
                        starjaya@yahoo.com</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Image ID="Image4"  style="height:35px;width:35px" runat="server" ImageUrl="~/UAS/image/dribble.png" /></td>
                    <td class="style2">
                        Nomor HP</td>
                    <td class="style1">
                        :</td>
                    <td>
                        0853 - 5534 - 5510</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style1">
                        :</td>
                    <td>
                        0853 - 1234 - 5432</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Image ID="Image5"  style="height:35px;width:35px" runat="server" ImageUrl="~/UAS/image/dribble.png" /></td>
                    <td class="style2">
                        Websites
                    </td>
                    <td class="style1">
                        :</td>
                    <td>
                        www.starjayacaraudio.com</td>
                </tr>
            </table>

            <div id="sosmed">
            <p style="font-family:Tw Cen MT;text-align:left;font-size:30pt"> Star Jaya @ Media Sosial</p>
            <asp:Image ID="instagram" style="margin-left:215px" title="Instagram" runat="server" ImageUrl="~/UAS/image/instagram.png" />
            <asp:Image ID="dribble"  runat="server" ImageUrl="~/UAS/image/dribble.png" />
            <asp:Image ID="googleplus" runat="server" ImageUrl="~/UAS/image/googleplus.png" />
              <asp:Image ID="olx"  title="OLX"  runat="server" ImageUrl="~/UAS/image/olx.jpg" />
            <asp:Image ID="lazada" title="Lazada" runat="server" ImageUrl="~/UAS/image/lazada.png" />
            <asp:Image ID="bukalapak" title="Buka Lapak" runat="server" ImageUrl="~/UAS/image/bukalapak.png" />
            </div>
            
        </div>




            

        


    
        
        
</body>
</html>
