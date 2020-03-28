<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="İLETİŞİM.aspx.cs" Inherits="msterpage.İLETİŞİM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!DOCTYPE html>

<html>

    <title></title>
    <link href="iletişim.css" rel="stylesheet" />
</head>
<body>
  
        <div class="container">
  <form action="action_page.php">

    <label for="fname">Adınız</label>
    <input type="text" id="fname" name="firstname" placeholder="Adınız..">

    <label for="lname">Soyadınız</label>
    <input type="text" id="lname" name="lastname" placeholder="Soyadınız..">

    <label for="eposta">E-posta Adresinizi Giriniz</label>
    <input type="text" id="eposta" name="eposta" placeholder="Eposta Adresiniz..">

    <label for="subject">Mesajınız</label>
    <textarea id="subject" name="subject" placeholder="Fikirleinizi yazın.." style="height:200px"></textarea>

    <input type="submit" value="Gönder">

  </form>
</div>
    </form>
</body>
</html>





</asp:Content>
