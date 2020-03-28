<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Sil.aspx.cs" Inherits="msterpage.Sil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div style="margin-left:400px; padding-top:300px; background-color:#ccc; width:600px;height:300px; text-align: center;">

       <strong>ŞİFRENİZİ GİRİNİZ:&nbsp;
       <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="177px"></asp:TextBox>
       <br />
       </strong>

       <asp:Button ID="YES" runat="server" Text="SİL" style="margin-top:100px; margin-left:60px; width:100px; height:50px;" OnClick="YES_Click" />
      <asp:Button ID="NO" runat="server" Text="VAZGEÇ" style="margin-top:100px; margin-left:100px; width:100px; height:50px;" OnClick="NO_Click" />

   </div>


</asp:Content>
