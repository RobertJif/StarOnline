<%@ Page Language="VB" AutoEventWireup="false" CodeFile="berandaa.aspx.vb" Inherits="UAS_berandaa" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Star Jaya!</title>
    <link href="~/UAS/style/css.css" rel="Stylesheet" runat="server" />
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
    
        
        
        <div id="contentbesar">
            <table align="center" class="tablebesar">
                <tr>
                    <td class="besartengah">
                    <asp:Image ID="gbrcontentbesar" runat="server" ImageUrl="~/UAS/image/a1.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="besarbawah">
                    Ayo ! Modifikasi Mobil Anda Bersama Kami
                    </td>
                </tr>
            </table>
        </div>
    
         <div id="contentkecilall">
         
         <p style="font-family:Tw Cen MT;text-align:center;font-size:40pt"> MELAYANI </p>
         
         <div id="garispenghias">
         
         </div>
            <div id="contentkecilkiri">
                 <table class="tablekecil">
                     <tr>
                        <td class="kecilatas">
                             <asp:Image ID="gbrcontentkecil1" runat="server" ImageUrl="~/UAS/image/ben.jpg" />
                        </td>
                    </tr>
                     <tr>
                        <td class="keciltengah">
                        ACCESSORIES  
                        </td>
                    </tr>
                    <tr>
                        <td class="kecilbawah">
                        bagas sjdashf sjdh sjdasjflks sfha skfajs ACCESSORIES  
                        </td>
                    </tr>
                </table>
            </div>

            <div id="contentkeciltengah">
                <table class="tablekecil">
                    <tr>
                        <td class="kecilatas">
                             <asp:Image ID="Image2" runat="server" ImageUrl="~/UAS/image/son.jpg" />
                        </td>
                    </tr>
                     <tr>
                        <td class="keciltengah">
                            SOUND SYSTEM  
                        </td>
                    </tr>
                     <td class="kecilbawah">
                        bagas sjdashf sjdh sjdasjflks sfha skfajs ACCESSORIES  
                        </td>
                </table>
            </div>

            <div id="contentkecilkanan">
                <table class="tablekecil">
                     <tr>
                        <td class="kecilatas">
                             <asp:Image ID="Image3" runat="server" ImageUrl="~/UAS/image/kac.jpg" />
                        </td>
                    </tr>
                     <tr>
                        <td class="keciltengah">
                            JOK MOBIL & KACA FILM   
                        </td>
                    </tr>
                     <td class="kecilbawah">
                        bagas sjdashf sjdh sjdasjflks sfha skfajs ACCESSORIES  
                        </td>
                </table>
            </div>
        </div>
      
        <div id="footer">
            <div id="footeratas">
                <p>DISPONSORI OLEH</p>
            </div>
            <div id="garispenghiasfooter">
         
         </div>


            <div id="footerbawah">
            <asp:Image ID="pioneer" style="margin-left:0px" runat="server" ImageUrl="~/UAS/image/pioneer.jpg" />
            <asp:Image ID="venom" runat="server" ImageUrl="~/UAS/image/venom.png" />
            <asp:Image ID="jbl" runat="server" ImageUrl="~/UAS/image/jbl.png" />
            <asp:Image ID="clarion" runat="server" ImageUrl="~/UAS/image/clarion.png" />
            <asp:Image ID="alpine" style="margin-left:100px" runat="server" ImageUrl="~/UAS/image/alpine.png" />
            <asp:Image ID="jvc" runat="server" ImageUrl="~/UAS/image/jvc.png" />
            <asp:Image ID="kenwood" runat="server" ImageUrl="~/UAS/image/kenwood.png" />
            <asp:Image ID="infinity" style="margin-left:100px" runat="server" ImageUrl="~/UAS/image/infinity.png" />
            <asp:Image ID="fusion"  runat="server" ImageUrl="~/UAS/image/fusion.png" />
            <asp:Image ID="booster"  runat="server" ImageUrl="~/UAS/image/booster.jpg" />
            </div>
        </div>

        <div id="end">
        <div id="endkiri">
        
        </div>
        <div id="endkanan">
        
        </div>

        </div>
        
</body>
</html>
