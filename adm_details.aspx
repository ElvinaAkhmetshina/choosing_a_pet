<%@ Page Title="adm_details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adm_details.aspx.cs" Inherits="choosing_a_pet.adm_details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:Button ID="Back" runat="server" Text="Назад" OnClick="Back_Click"/>
        <asp:Panel ID="DetailsAds" runat="server">
           <div id="Details" >
             
               <asp:Label ID="LName" runat="server"></asp:Label>
               <asp:Label ID="LTown" runat="server"></asp:Label>
               <asp:Label ID="LTel" runat="server"></asp:Label>
               <asp:Label ID="LAddr" runat="server"></asp:Label>
               <asp:Label ID="LComment" runat="server"></asp:Label>
               <asp:Label ID="LAdded" runat="server"></asp:Label>
            
               </div>

               <asp:Image ID="UserImage" runat="server" Height="300px" Width="300px"/>
            <asp:Button ID="OkayButton" runat="server" Text="Объявление подходит для публикации" OnClick="OkayButton_Click"/>
            <asp:Button ID="NoButton" runat="server" Text="Объявление не подходит для публикации" OnClick="NoButton_Click"/> 
            <asp:Label ID="LResult" runat="server"></asp:Label>
        </asp:Panel>
    </form>
    </asp:Content>
