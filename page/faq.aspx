<%@ Page Language="VB" AutoEventWireup="false" CodeFile="faq.aspx.vb" Inherits="UAS_faq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Welcome to Star Jaya!</title>
    <link id="Link1" href="~/UAS/style/css.css" rel="Stylesheet" runat="server" />
    <style type="text/css">
        .style3
        {
            width: 1049px;
        }
        .style4
        {
            width: 40px;
        }
        .style5
        {
            width: 1016px;
        }
    </style>
</head>
<body>
       <form id="form1" runat="server">
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
    
        
        <p style="font-family:Tw Cen MT;text-align:left;font-size:40pt;margin-left:120px;color:Purple"> Frequently Ask Questions</p>
        

        <div id="contentfaq">
            
                    <table style="background-color:#9458ad;color:White;width:1099px; margin-bottom: 0px;">
                    <tr>
                    <td>
                     <p style="font-family:Tw Cen MT;font-size:20pt"> Q: Apakah kamu makan tiga kali sehari ? </p>
                    </td>
                    <td>
                    <asp:ImageButton ID="buka1" runat="server" style="width:30px;height:30px" ImageUrl="~/UAS/image/buka.png" /> 
                    </td>
                    </tr>
                    </table>           

                    <asp:Panel ID="A1" runat="server">
                    <table >
                    <tr>
                    <td class="style3">
                    <p style="font-family:Tw Cen MT;font-size:14pt"> A: gajuga sih , kadang ada duit aku makan lima kali, kalau gaada duit paling tunggu ada duit, kalau ndak mintak punya kawan, cemana lagi, hidup keras bro, kalau segan segan, matilah awak, harus pande panda kita hidup </p>
                    </td>
                    <td class="style4">
                    <asp:ImageButton ID="tutup1" runat="server" style="width:30px;height:30px" ImageUrl="~/UAS/image/tutup.png" />
                    </td>
                    </tr>
                    </table>
                    </asp:Panel>
                  
                    <table style="background-color:#9458ad;color:White;width:1099px;margin-top:1px">
                    <tr>
                    <td>
                    <p style="font-family:Tw Cen MT;font-size:20pt"> Q: Mengapa kau tak membalas cintaku? 
                    </td>
                    <td>
                    <asp:ImageButton ID="buka2" runat="server" style="width:30px;height:30px" ImageUrl="~/UAS/image/buka.png" /> 
                    </td>
                    </tr>
                    </table>           

                    
                    <asp:Panel ID="A2" runat="server">
                    <table >
                    <tr>
                    <td class="style3">
                     <p style="font-family:Tw Cen MT;font-size:14pt"> A: coba kau pikirkan,coba kau renungkan, kadang ada duit aku makan lima kali, kalau gaada duit paling tunggu ada duit, kalau ndak mintak punya kawan, cemana lagi, hidup keras bro, kalau segan segan, matilah awak, harus pande panda kita hidup ni 
                      </td>
                    <td class="style4">
                    <asp:ImageButton ID="tutup2" runat="server" style="width:30px;height:30px" ImageUrl="~/UAS/image/tutup.png" />
                    </td>
                    </tr>
                    </table>
                    </asp:Panel>

                   
                   
                   <table style="background-color:#9458ad;color:White;width:1099px;margin-top:1px">
                    <tr>
                    <td class="style5">
                    <p style="font-family:Tw Cen MT;font-size:20pt"> Q: Dimana letak Surga itu? 
                    </td>
                    <td>
                    <asp:ImageButton ID="buka3" runat="server" style="width:30px;height:30px" ImageUrl="~/UAS/image/buka.png" /> 
                    </td>
                    </tr>
                    </table>           

                    
                    <asp:Panel ID="A3" runat="server">
                    <table >
                    <tr>
                    <td class="style3">
                     <p style="font-family:Tw Cen MT;font-size:14pt"> A: biar kutemukan tempatku denganmu, kadang ada duit aku makan lima kali, kalau gaada duit paling tunggu ada duit, kalau ndak mintak punya kawan, cemana lagi, hidup keras bro, kalau segan segan, matilah awak, harus pande panda kita hidup ni 
                    </td>
                    <td class="style4">
                    <asp:ImageButton ID="tutup3" runat="server" style="width:30px;height:30px" ImageUrl="~/UAS/image/tutup.png" />
                    </td>
                    </tr>
                    </table>
                    </asp:Panel>
                   
                 


                 <table style="background-color:#9458ad;color:White;width:1099px;margin-top:1px">
                    <tr>
                    <td class="style5">
                    <p style="font-family:Tw Cen MT;font-size:20pt"> Q: Apa maksud anda melakukan hal itu? 
                    </td>
                    <td>
                    <asp:ImageButton ID="buka4" runat="server" style="width:30px;height:30px" ImageUrl="~/UAS/image/buka.png" /> 
                    </td>
                    </tr>
                    </table>           

                    
                    <asp:Panel ID="A4" runat="server">
                    <table >
                    <tr>
                    <td class="style3">
                     <p style="font-family:Tw Cen MT;font-size:14pt"> A: Tak ada hanya iseng, kadang ada duit aku makan lima kali, kalau gaada duit paling tunggu ada duit, kalau ndak mintak punya kawan, cemana lagi, hidup keras bro, kalau segan segan, matilah awak, harus pande panda kita hidup ni 
                    </td>
                    <td class="style4">
                    <asp:ImageButton ID="tutup4" runat="server" style="width:30px;height:30px" ImageUrl="~/UAS/image/tutup.png" />
                    </td>
                    </tr>
                    </table>
                    </asp:Panel>


                    <table style="background-color:#9458ad;color:White;width:1099px;margin-top:1px">
                    <tr>
                    <td class="style5">
                    <p style="font-family:Tw Cen MT;font-size:20pt"> Q: Ada apa denganmu ? 
                    </td>
                    <td>
                    <asp:ImageButton ID="buka5" runat="server" style="width:30px;height:30px" ImageUrl="~/UAS/image/buka.png" /> 
                    </td>
                    </tr>
                    </table>           

                    
                    <asp:Panel ID="A5" runat="server">
                    <table >
                    <tr>
                    <td class="style3">
                     <p style="font-family:Tw Cen MT;font-size:14pt"> A: ndak ada tu do tahapa, kadang ada duit aku makan lima kali, kalau gaada duit paling tunggu ada duit, kalau ndak mintak punya kawan, cemana lagi, hidup keras bro, kalau segan segan, matilah awak, harus pande panda kita hidup ni 
                    </td>
                    <td class="style4">
                    <asp:ImageButton ID="tutup5" runat="server" style="width:30px;height:30px" ImageUrl="~/UAS/image/tutup.png" />
                    </td>
                    </tr>
                    </table>
                    </asp:Panel>

        </div>
</form>
</body>
</html>
