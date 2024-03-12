<%@ Page Title="shelters" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="shelters.aspx.cs" Inherits="choosing_a_pet.shelters" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form2" runat="server">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap" rel="stylesheet">
<link rel="stylesheet" href="nyyy.css">
        <div class="center">
    <h1>Приюты</h1>
            
    <asp:Panel ID="Shelters" runat="server" CssClass="panel">
        <asp:GridView ID="SheltersList" runat="server" AllowPaging="true" AutoGenerateColumns="false" GridLines="None">
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="id" HeaderText="id" Visible="false"/>
                <asp:HyperLinkField DataTextField="Name" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="https://www.google.com/search?sxsrf=APwXEdeFQlTF9Xk36JDQucle2HAJhBUJ5Q:1683631130058&q=%D0%BF%D1%80%D0%B8%D1%8E%D1%82%D1%8B+%D0%B4%D0%BB%D1%8F+%D1%81%D0%BE%D0%B1%D0%B0%D0%BA++%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D1%8C&sa=X&ved=2ahUKEwji8MHbjuj-AhWOzYsKHXZ7B_sQuzF6BAgDEAI&biw=1280&bih=577&dpr=1.5" HeaderText="Название" ItemStyle-Width = "150" />
<%--   <asp:BoundField ItemStyle-Width="150px" DataField="name" HeaderText="Название" />--%>
                <asp:BoundField ItemStyle-Width="150px" DataField="addres" HeaderText="Адрес" />
                <asp:BoundField ItemStyle-Width="150px" DataField="reiting" HeaderText="Рейтинг" />
                <asp:BoundField ItemStyle-Width="150px" DataField="added" HeaderText="added" Visible="false"/>
                <asp:BoundField ItemStyle-Width="150px" DataField="tel" HeaderText="Номер телефона" />
            </Columns>
        </asp:GridView>
    </asp:Panel>
               
            </div>
    </form>
 </asp:Content>





<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>