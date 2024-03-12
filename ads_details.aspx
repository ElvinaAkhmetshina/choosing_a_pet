<%@ Page Title="ads_details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ads_details.aspx.cs" Inherits="choosing_a_pet.ads_details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        <asp:Button ID="Back" runat="server" Text="Назад" OnClick="Back_Click"/>
        <asp:Panel ID="DetailsAds" runat="server">
           <div><asp:Label ID="LName" runat="server"></asp:Label></div>
             <div>  <asp:Label ID="LTown" runat="server"></asp:Label></div>
              <div> <asp:Label ID="LTel" runat="server"></asp:Label></div>
              <div> <asp:Label ID="LAddr" runat="server"></asp:Label></div>
              <div> <asp:Label ID="LComment" runat="server"></asp:Label></div>
              <div> <asp:Label ID="LAdded" runat="server"></asp:Label></div>
            
               

               <asp:Image ID="UserImage" runat="server" Height="300px" Width="300px"/>
        </asp:Panel>
    </form>
</asp:Content>
