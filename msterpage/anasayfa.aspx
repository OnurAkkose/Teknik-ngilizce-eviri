<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="msterpage.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                    
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1">

  

<style>


  
body {font-family: Arial, Helvetica, sans-serif;
     background-image:url('/RESİM/foto.jpeg');
     background-size:100% 100%;
      
}

.panell {border: 3px solid #f1f1f1;
      width:200px; height:800px; margin-left:0px;
     background-color:#ccc;
     
}


    input[type=text], input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    .button {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }

        button:hover {
            opacity: 0.8;
        }


.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}


}
    .auto-style2 {
        text-align: center;
    }
</style>

 
    <div class="panell">
    
   
     
    <asp:Panel ID="Panel1" runat="server">
      
  <div>
      
      
        <h2 style="text-align: center">GİRİŞ</h2>
    &nbsp;<label for="uname"><b>Kullanıcı Adı</b></label>
      <asp:TextBox ID="txtkadı" runat="server" ></asp:TextBox>
      <strong>ŞİFRE</strong>
      <asp:TextBox ID="txtşifre"  runat="server"></asp:TextBox>
      
      <label>
      <input type="checkbox" checked="checked" name="remember"> Beni Hatırla
      </label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><asp:Button ID="Button1" runat="server" Text="GİRİŞ YAP" OnClick="Button1_Click" style="margin-left:28px; border-color:black; font-weight: 700;" Width="162px" Height="24px"/>
 
   <span class="psw">Şifremi <a href="İLETİŞİM.aspx">Unuttum</a></span>
  
        <asp:Label ID="Label1" runat="server"></asp:Label>    
  </div>
        <div style="margin-top:50px;">
            ADMİN GİRİŞİ
            <asp:TextBox ID="txtadmin" runat="server"></asp:TextBox>
            <asp:Button runat="server" Text="Admin Girişi" OnClick="Unnamed1_Click1" style="font-weight: 700; margin-left: 34px" Width="146px" />
        </div>
    </asp:Panel>
       
    <asp:Panel ID="Panel2" runat="server" Height="721px">
        
      
        
        
        <asp:Label ID="lblhosgeldin" runat="server" Text="Hoşgeldin,"></asp:Label>
        <br />
        <asp:Label  ID="kadi" runat="server" style="margin-bottom:10px; font-weight: 700;"></asp:Label>
        <br />
        <br />
        <div style="margin-top:30px; background-color:#ccc; border-style:groove; border-width:3px; border-color:black;">
       <br />
            <asp:Label runat="server" Text="<b>Kelime Ekle<b/>" style="text-align: center; margin-left:30px;  "></asp:Label>
            <asp:TextBox ID="txtekle" runat="server"  width="150px" style="margin-left:10px; margin-top:10px;"></asp:TextBox>
            <br />
            <br />          
            <asp:Button runat="server" class="button" Text="Kelime Ekle" OnClick="Unnamed2_Click" />
        </div>
       <div style="border: 3px groove black; margin-top:30px; height:344px; background-color:#ccc;" class="auto-style2">
           <br />
           <asp:Label runat="server" Text="<b>Üyelik İşlemleri<b/>" style="margin-left:20px; color:black;"></asp:Label>
           <asp:Button runat="server" class="button" Text="Kullanıcı Adımı Değiştir" style="text-align: left; margin-top:20px;" OnClick="Unnamed5_Click1"    />
            <asp:Button runat="server" class="button" Text="Şifremi Değiştir" style="text-align: left; margin-top:20px;" OnClick="Unnamed6_Click"   />
           <br /> 
           <asp:Button runat="server"  class="button" Text="Üyelik İptali" style="text-align: left; margin-top:20px;" OnClick="Unnamed7_Click"   />
     <asp:Button runat="server"  class="button" Text="ÇIKIŞ" style="text-align: left; margin-top:20px;" OnClick="Unnamed8_Click"   />
           </div>
   
    


    </asp:Panel>
     
      
        </div>
       
    <div class="çevir">
            <asp:TextBox ID="txtara" runat="server" style="margin-top:0px; margin-left:250px;box-sizing: border-box;" Height="36px" Width="331px " placeholder="Çevirmek İstediğiniz Kelime"></asp:TextBox>
            <asp:Button ID="btncevir" runat="server" Text="ÇEVİR" style="margin-left:50px; margin-top:0px;" Width="91px" Height="36px" BorderStyle="Double" OnClick="Button2_Click"/>
        <asp:Button ID="btnses" runat="server" Text="Ses" OnClick="btnses_Click" />
        <br />
        <br />

  <div ID="divcevir" runat="server" style="margin-left:300px; width:300px; height:50px;">

      <asp:TextBox ID="txtcevir" runat="server" width="100%" height="100%"></asp:TextBox>

  </div>

    </div>

</asp:Content>
