    <title>Star Jaya</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
</head>
<body>
    <form id="form1" runat="server">
   <!-- <div>
    <div style="width: 180px">
        <br />
        <br />
        
        <table class="auto-style1">
            <tr>
                <td><asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" ItemStyle-HorizontalAlign="Center" DataKeyField="id_kategori" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
            <ItemTemplate>
                
            
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("gambar") %>' Width="200px" Height="200px" />
<br />
                <asp:Label ID="nama_kategoriLabel" runat="server" Text='<%# Eval("nama_kategori") %>' />
                <br />
                <asp:Button ID="Button1" runat="server" Text="view" PostBackUrl='<%# Eval("nama_kategori", "~/UAS/Controler/ViewProdukPerKategori.aspx?judul={0}") %>' />
                <br />
            </ItemTemplate>
            
        </asp:DataList></td>



                <td><asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
            <ItemTemplate>
                
            
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("gambar") %>' Width="200px" Height="200px" />
<br />
                <asp:Label ID="nama_kategoriLabel" runat="server" Text='<%# Eval("nama_kategori") %>' />
                <br />
                <asp:Button ID="Button1" runat="server" Text="view" PostBackUrl='<%# Eval("nama_kategori", "~/UAS/Controler/ViewProdukPerKategori.aspx?judul={0}") %>' />
                <br />
            </ItemTemplate>
        </asp:DataList></td>




                <td> <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
           <ItemTemplate>
                
            
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("gambar") %>' Width="200px" Height="200px" />
<br />
                <asp:Label ID="nama_kategoriLabel" runat="server" Text='<%# Eval("nama_kategori") %>' />
                <br />
                <asp:Button ID="Button1" runat="server" Text="view" PostBackUrl='<%# Eval("nama_kategori", "~/UAS/Controler/ViewProdukPerKategori.aspx?judul={0}") %>' />
                <br />
            </ItemTemplate>
        </asp:DataList></td>
            </tr>
        </table>
        </div>
       <div style="width: 180px;margin-left:421px;margin-top:-225px">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT nama_kategori, gambar FROM Kategori WHERE (id_kategori % 3 = 2)"></asp:SqlDataSource>
        
       
        </div>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT nama_kategori, gambar FROM Kategori WHERE (id_kategori % 3 = 0)"></asp:SqlDataSource>
        
        <br />
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT id_kategori,nama_kategori, gambar FROM Kategori WHERE (id_kategori % 3 = 1)"></asp:SqlDataSource>
        -->






        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id_kategori" DataSourceID="SqlDataSourceKategori" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="">
                   
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("gambar") %>' Width="200px" Height="200px" />
<br />
                <asp:Label ID="nama_kategoriLabel" runat="server" Text='<%# Eval("nama_kategori") %>' />
                <br />
                <asp:Button ID="Button1" runat="server" Text="view" PostBackUrl='<%# Eval("nama_kategori", "~/UAS/Controler/ViewProdukPerKategori.aspx?judul={0}") %>' />
              
                    <br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="">
                       
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("gambar") %>' Width="200px" Height="200px" />
<br />
                <asp:Label ID="nama_kategoriLabel" runat="server" Text='<%# Eval("nama_kategori") %>' />
                <br />
                <asp:Button ID="Button1" runat="server" Text="view" PostBackUrl='<%# Eval("nama_kategori", "~/UAS/Controler/ViewProdukPerKategori.aspx?judul={0}") %>' />
              
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>Data Tidak Ditemukan</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">
                    <asp:TextBox ID="nama_kategoriTextBox" runat="server" Text='<%# Bind("nama_kategori") %>' />
                    <br />gambar:
                    <asp:TextBox ID="gambarTextBox" runat="server" Text='<%# Bind("gambar") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="">
                    
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("gambar") %>' Width="200px" Height="200px" />
<br />
                <asp:Label ID="nama_kategoriLabel" runat="server" Text='<%# Eval("nama_kategori") %>' />
                <br />
                <asp:Button ID="Button1" runat="server" Text="view" PostBackUrl='<%# Eval("nama_kategori", "~/UAS/Controler/ViewProdukPerKategori.aspx?judul={0}") %>' />
              
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">
          
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("gambar") %>' Width="200px" Height="200px" />
<br />
                <asp:Label ID="nama_kategoriLabel" runat="server" Text='<%# Eval("nama_kategori") %>' />
                <br />
                <asp:Button ID="Button1" runat="server" Text="view" PostBackUrl='<%# Eval("nama_kategori", "~/UAS/Controler/ViewProdukPerKategori.aspx?judul={0}") %>' />
              
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSourceKategori" runat="server" ConnectionString="<%$ ConnectionStrings:StarJayaConnectionString %>" SelectCommand="SELECT * FROM [Kategori]"></asp:SqlDataSource>






    </form>
</body>
</html>
