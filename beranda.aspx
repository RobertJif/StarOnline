<%@ Page Language="VB" AutoEventWireup="false" CodeFile="beranda.aspx.vb" Inherits="UAS_beranda" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
       
        }
        #content
        {
            height: 218px;
        }
        .logoberanda
        {
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
        }
        
        .style1
        {
            width: 100%;
            
            height: 400px;
        }
        .style2
        {
            height: 37px;
            text-align: center;
        }
        .style5
        {
            height: 260px;
            text-align: center;
        }
        
        .style6
        {
            height: 71px;
            text-align: center;
        }
        
        
        
        .style7
        {
            width: 100%;
        }
        .style8
        {
            height: 187px;
            text-align: center;
        }
        .style9
        {
            height: 106px;
            text-align: center;
            
            
        }
        
        
        
    </style>
</head>
<body style="background-image:url('image/bgg.jpg');background-repeat:repeat;height:auto" >
    <form id="form1" runat="server">
    
    <div id="Div1" style="margin:auto; height: 50px; width: 953px;">
        <asp:Image style="margin:auto;margin-left:365px;margin-bottom:75px; height:35px;width:35px" ID="instagram" runat="server" ImageUrl="~/UAS/image/instagram.png" />
        <asp:Image style="height:35px;width:35px;margin-left:10px;margin-bottom:75px" ID="devianart" runat="server" ImageUrl="~/UAS/image/Deviantart.png" />
        <asp:Image style="height:35px;width:35px;margin-left:10px;margin-bottom:75px" ID="twitter"  runat="server" ImageUrl="~/UAS/image/twitter.png" />
        <asp:Image style="height:35px;width:35px;margin-left:10px;margin-bottom:75px" ID="dribble" runat="server" ImageUrl="~/UAS/image/dribble.png" />
        <asp:Image style="height:35px;width:35px;margin-left:10px;margin-bottom:75px" ID="googleplus" runat="server" ImageUrl="~/UAS/image/googleplus.png" />
    </div>
    
    <div id="logo" style="margin:auto;margin-top:3px;height:125px;width:953px;">
        <asp:Image style="margin:auto;margin-left:338px;height:125px;width:300px" ID="logodiberanda" cssclass="logoberanda" runat="server" ImageUrl="~/UAS/image/logo.jpg" />
    </div>
    
    <div id="fitur" style="background-color:Black; margin:auto;margin-top:5px; height: 77px; width: 953px;">
       <asp:Image ID="iconberanda" style="margin-left:250px;margin-bottom:55px;height:50px;width:50px" 
            runat="server" ImageUrl="~/UAS/image/home.png" />
        <asp:Image ID="iconproduk" style="margin-left:52px;margin-bottom:55px;height:50px;width:50px" 
            runat="server" ImageUrl="~/UAS/image/PRODUCT.png" />
        <asp:Image ID="iconpesan" 
            style="margin-left:48px;margin-bottom:55px;" 
            runat="server" ImageUrl="~/UAS/image/order.png" Height="50px" />
        <asp:Image ID="iconfaq" 
            style="margin-left:46px;margin-bottom:50px;height:60px;width:60px" 
            runat="server" ImageUrl="~/UAS/image/FAQ.png"/>
        <asp:Image ID="icontentangkami" 
            style="margin-left:48px;margin-bottom:55px;height:50px;width:50px" 
            runat="server" ImageUrl="~/UAS/image/ab.png" />       
        
     <div id="menu" style="margin-left:245px;margin-top:-65px;width:550px;">
         <asp:HyperLink ID="beranda" style="color:White;text-decoration:none" runat="server" 
            Font-Names="Comic Sans MS" NavigateUrl="~/UAS/beranda.aspx">Beranda</asp:HyperLink>
        
        <asp:HyperLink ID="produk" 
            style="color:White;text-decoration:none;margin-left:45px" runat="server" 
            Font-Names="Comic Sans MS" NavigateUrl="~/UAS/page/produk.aspx">Produk</asp:HyperLink>
            
        <asp:HyperLink ID="pesan" 
            style="color:White;text-decoration:none;margin-left:55px" runat="server" 
            Font-Names="Comic Sans MS" NavigateUrl="~/UAS/pesan.aspx">Pesan</asp:HyperLink>
           
        <asp:HyperLink ID="faq" 
            style="color:White;text-decoration:none;margin-left:65px" runat="server" 
            Font-Names="Comic Sans MS" NavigateUrl="~/UAS/page/faq.aspx">FAQ</asp:HyperLink>
            
        <asp:HyperLink ID="tentangkami" 
            style="color:White;text-decoration:none;margin-left:40px" runat="server" 
            Font-Names="Comic Sans MS" NavigateUrl="~/UAS/page/tentangkami.aspx">Tentang Kami</asp:HyperLink>
    </div>
    </div>
    
    <div id="contentbesar" style="border-color:none;background-color:white;width:953px;margin:auto;margin-top:1px;height:400px" >
    
        <table align="center" class="style1">
            <tr>
                <td class="style2">
                Karya STar Jaya
                </td>
            </tr>
            <tr>
                <td class="style5">
               
                <asp:Image ID="gbrcontentbesar" style="height:100%;width:100%" 
            runat="server" ImageUrl="~/UAS/image/lamp.jpg" />
            <tr>
                <td class="style6">
                inilah lagu indonesia raya
                </td>
            </tr>
        </table>
    
    </div>
    <div id="semuacontentkecil" style="width:954px;margin:auto;margin-top:0px;margin-left:190.5px;height:300px" >
    <div id="contentkecilkiri" style="background-color:White;width:317px;;height:300px" >
    
        <table class="style7">
            <tr>
                <td class="style8">
                 <asp:Image ID="gbrcontentkecil1" style="height:100%;width:100%" 
            runat="server" ImageUrl="~/UAS/image/boil.jpg" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                (panggildeskripsi) berita ini hanyalah rekayasa belaka (panggildeskripsi)   
                 
                </td>
            </tr>
        </table>
    
    </div>
    <div id="contentkeciltengah " style="background-color:white;width:317px;margin-left:317px;margin-top:-300px;height:300px" >
    
    <table class="style7">
             <tr>
                <td class="style8">
                <asp:Image ID="gbrcontentkecil2" style="height:100%;width:100%" 
            runat="server" ImageUrl="~/UAS/image/sd.jpg" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                INI juga rekaya aja loh   
                </td>
            </tr>
        </table>
    
    </div>

    <div id="contentkecilkanan" style="width:317px;background-color:White;margin-left:634px;margin-top:-300px;height:300px" >
    
    <table class="style7">
             <tr>
                <td class="style8">
               <asp:Image ID="gbrcontentkecil3" style="height:100%;width:100%" 
            runat="server" ImageUrl="~/UAS/image/bbb.jpg" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                Biasa ajalah kau besok libur nyo
                </td>
            </tr>
        </table>

    </div>
    
    
    

    

    </div>
    
    <div id="footer" style="background-color:white;width:953px;margin:auto;margin-top:1px;height:180px">
    
    </div>

    </form>
</body>
</html>
