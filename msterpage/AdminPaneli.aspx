<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPaneli.aspx.cs" Inherits="msterpage.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>

         

    </title>
   <style>
     body {font-family: Arial, Helvetica, sans-serif;
     background-image:url('/RESİM/admin.jpeg');
     background-size:100% 100%;
      
}

   </style>
</head>
<body>
    
 

    <form id="form1" runat="server">
        <div style="margin-left:0px; margin-top:0px; width:200px; height:900px; background-color:#ccc; border-color:black; border-width:3px; ">
            <strong>
            <br />
            <br />
            İSTENİLEN KELİMELER</strong>
            <br />
            <br />
            <br />
            <br />
         <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource2" ForeColor="Black" Width="195px">
             <AlternatingItemStyle BackColor="PaleGoldenrod" />
             <FooterStyle BackColor="Tan" />
             <HeaderStyle BackColor="Tan" Font-Bold="True" />
             <ItemTemplate>
                 Kelime:
                 <asp:Label ID="KelimeLabel" runat="server" Text='<%# Eval("Kelime") %>' />
                 <br />
<br />
             </ItemTemplate>
             <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            </asp:DataList>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString4 %>" SelectCommand="SELECT * FROM [İstenilenKelime]"></asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString3 %>" SelectCommand="SELECT * FROM [İstenilenKelime]"></asp:SqlDataSource>

        </div>

        <div style="margin-left:500px;margin-top:-800px; width:694px; height:500px; ">

            <asp:TextBox ID="txtk1" runat="server" style="margin-left:100px; margin-top:200px; " placeholder="Türkçe" Height="27px" Width="136px" BorderColor="Black" BorderStyle="Groove" BorderWidth="3px" ></asp:TextBox>
            <asp:TextBox ID="txtk2" runat="server" style="margin-left:100px;" placeholder="İngilizce" Height="27px" Width="136px" BorderColor="Black" BorderStyle="Groove" BorderWidth="3px"></asp:TextBox>
           <br />
            <br />
            <div style="margin-top:100px;">
            
            <asp:Button ID="btnk" runat="server" Text="EKLE" style="margin-left: 280px; font-weight: 700; background-color: #FFCC00;"  Width="284px" OnClick="btnk_Click" Height="35px" />
                </div>
        
        <div style="margin-top:50px;">
            <asp:Button ID="btncıkıs" runat="server" Text="Çıkış" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" OnClick="btncıkıs_Click" style="font-weight: 700; margin-left: 405px; background-color: #FF2828" Width="188px" />
        </div>
            
        </div>
        
    </form>
</body>
</html>
