<%@ Page Language="VB" AutoEventWireup="false" CodeFile="produk.aspx.vb" Inherits="UAS_page_produkk" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Welcome to Star Jaya!</title>
    <link id="Link1" href="~/UAS/style/css.css" rel="Stylesheet" runat="server" />
    <style type="text/css">
        .style1
        {
            height: 190px;
        }
        .style2
        {
            height: 55px;
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
    
        
            
        
        <p style="font-family:Tw Cen MT;text-align:center;font-size:40pt"> PRODUK</p>
        <div id="garispenghias">
        </div>

        <div id="contentprodukall">
         <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/UAS/page/produkalarm.aspx">
        <div id="contentprodukkiri">
            <table align="center" class="tablekecil">
               
                <tr>
                    <td class="style1">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/UAS/image/al1.JPG" />
                    </td>
                </tr>
                
                <tr>
                    <td class="style2">
                    <p style="font-family:Tw Cen MT;text-align:center;font-size:15pt"> Alarm</p>
                    </td>
                </tr>
                
            </table>
       </div>
       </asp:HyperLink>
       <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/UAS/page/produkdoubledin.aspx">
       <div id="contentproduktengah">
        <table align="center" class="tablekecil">
                <tr>
                    <td class="style1">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/UAS/image/ddin.JPG" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                    <p style="font-family:Tw Cen MT;text-align:center;font-size:15pt"> Double Din</p>
                    </td>
                </tr>
            </table>
        </div>
        <div id="contentprodukkanan">
        <table align="center" class="tablekecil">
                <tr>
                    <td class="style1">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/UAS/image/l1.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                    <p style="font-family:Tw Cen MT;text-align:center;font-size:15pt"> Lampu</p>
                    </td>
                </tr>
            </table>

        </div>
        </asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UAS/page/produklampu.aspx">
       <div id="contentprodukkiri">
            <table align="center" class="tablekecil">
                <tr>
                    <td class="style1">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/UAS/image/tape.JPG" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                    <p style="font-family:Tw Cen MT;text-align:center;font-size:15pt"> Single Din</p>
                    </td>
                </tr>
            </table>
       </div>
       </asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UAS/page/produksingledin.aspx">
       <div id="contentproduktengah">
        <table align="center" class="tablekecil">
                <tr>
                    <td class="style1">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/UAS/image/sp1.JPG" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                    <p style="font-family:Tw Cen MT;text-align:center;font-size:15pt"> Speaker</p>
                    </td>
                </tr>
            </table>
        </div>
        </asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/UAS/page/produkspeaker.aspx">
        <div id="contentprodukkanan">
        <table align="center" class="tablekecil">
                <tr>
                    <td class="style1">
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/UAS/image/spo1.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                    <p style="font-family:Tw Cen MT;text-align:center;font-size:15pt"> Spoiler</p>
                    </td>
                </tr>
            </table>
        </div>
        </asp:HyperLink>
        




        </div>
        

        


    
        
        
</body>
</html>

