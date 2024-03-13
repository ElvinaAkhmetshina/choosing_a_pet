<%@ Page Title="ads" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ads.aspx.cs" Inherits="choosing_a_pet.ads" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:Panel ID="AllAds" runat="server">
            <h2>Объявления.</h2>
              <asp:GridView ID="FoundList" runat="server" AllowPaging="true" AutoGenerateColumns="false" GridLines="None">
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="id" HeaderText="id" Visible="false"/>
                <asp:HyperLinkField DataTextField="name_fam_ot" DataNavigateUrlFields="id,tel" 
                    DataNavigateUrlFormatString="ads_details.aspx?id={0}&tel={1}" HeaderText="Имя Фамилия Отчество" 
                    ItemStyle-Width = "150" />
                  <asp:BoundField ItemStyle-Width="150px" DataField="town" HeaderText="Город" />
                  <asp:BoundField ItemStyle-Width="150px" DataField="tel" HeaderText="Номер телефона" />
                <asp:BoundField ItemStyle-Width="150px" DataField="addr" HeaderText="Адрес" />
              
                <asp:BoundField ItemStyle-Width="150px" DataField="comment" HeaderText="Комментарий" />
                <asp:BoundField ItemStyle-Width="150px" DataField="added" HeaderText="added" Visible="false"/>
              
                
            </Columns>
        </asp:GridView>








        </asp:Panel>
       
    </form>
</asp:Content>
