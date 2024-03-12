<%@ Page Title="adm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adm.aspx.cs" Inherits="choosing_a_pet.adm" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <h3>Войдите как администратор</h3>
        <div>
            <asp:Label ID="LLogin" runat="server" Text="Логин"></asp:Label>
            <asp:TextBox ID="TLogin" runat="server"></asp:TextBox>
            <asp:Label ID="LPass" runat="server" Text="Пароль"></asp:Label>
            <asp:TextBox ID="TPass" runat="server"></asp:TextBox>
            <asp:Button ID="BEnter" runat="server" Text="Войти" OnClick="BEnter_Click"/>
            <asp:Label ID="LResult" runat="server"></asp:Label>
        </div>

         <asp:Panel ID="AllAds" runat="server" Visible="false">
            <h2>Объявления.</h2>
              <asp:GridView ID="FoundList" runat="server" AllowPaging="true" AutoGenerateColumns="false" GridLines="None">
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="id" HeaderText="id" Visible="false"/>
                <asp:HyperLinkField DataTextField="name_fam_ot" DataNavigateUrlFields="id, tel" DataNavigateUrlFormatString="adm_details.aspx?id={0}&tel={1}" HeaderText="Имя Фамилия Отчество" ItemStyle-Width = "150" />
<%--   <asp:BoundField ItemStyle-Width="150px" DataField="name" HeaderText="Название" />--%>
                  <asp:BoundField ItemStyle-Width="150px" DataField="town" HeaderText="Город" />
                  <asp:BoundField ItemStyle-Width="150px" DataField="tel" HeaderText="Номер телефона" />
                <asp:BoundField ItemStyle-Width="150px" DataField="addr" HeaderText="Адрес" />
              
                <asp:BoundField ItemStyle-Width="150px" DataField="comment" HeaderText="Комментарий" />
                <asp:BoundField ItemStyle-Width="150px" DataField="added" HeaderText="added"/>
                
            </Columns>
        </asp:GridView>





        <%-- <asp:GridView ID="HSearchList" runat="server" AllowPaging="true" AutoGenerateColumns="false" GridLines="None">
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="id" HeaderText="id" Visible="false"/>
                <asp:HyperLinkField DataTextField="name_fam_ot" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="veterinary_clinic.aspx" HeaderText="Имя Фамилия Отчество" ItemStyle-Width = "150" />
                  <asp:BoundField ItemStyle-Width="150px" DataField="town" HeaderText="Город" />
                  <asp:BoundField ItemStyle-Width="150px" DataField="tel" HeaderText="Номер телефона" />
                <asp:BoundField ItemStyle-Width="150px" DataField="addr" HeaderText="Адрес" />
              
                <asp:BoundField ItemStyle-Width="150px" DataField="comment" HeaderText="Комментарий" />
                <asp:BoundField ItemStyle-Width="150px" DataField="added" HeaderText="added" Visible="false"/>
                
            </Columns>
        </asp:GridView>



             <asp:GridView ID="HShelterList" runat="server" AllowPaging="true" AutoGenerateColumns="false" GridLines="None">
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="id" HeaderText="id" Visible="false"/>
                <asp:HyperLinkField DataTextField="name_fam_ot" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="veterinary_clinic.aspx" HeaderText="Имя Фамилия Отчество" ItemStyle-Width = "150" />
                  <asp:BoundField ItemStyle-Width="150px" DataField="town" HeaderText="Город" />
                  <asp:BoundField ItemStyle-Width="150px" DataField="tel" HeaderText="Номер телефона" />
                <asp:BoundField ItemStyle-Width="150px" DataField="addr" HeaderText="Адрес" />
              
                <asp:BoundField ItemStyle-Width="150px" DataField="comment" HeaderText="Комментарий" />
                <asp:BoundField ItemStyle-Width="150px" DataField="added" HeaderText="added" Visible="false"/>
                
            </Columns>
        </asp:GridView>




              <asp:GridView ID="LostList" runat="server" AllowPaging="true" AutoGenerateColumns="false" GridLines="None">
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="id" HeaderText="id" Visible="false"/>
                <asp:HyperLinkField DataTextField="name_fam_ot" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="veterinary_clinic.aspx" HeaderText="Имя Фамилия Отчество" ItemStyle-Width = "150" />
                  <asp:BoundField ItemStyle-Width="150px" DataField="town" HeaderText="Город" />
                  <asp:BoundField ItemStyle-Width="150px" DataField="tel" HeaderText="Номер телефона" />
                <asp:BoundField ItemStyle-Width="150px" DataField="addr" HeaderText="Адрес" />
              
                <asp:BoundField ItemStyle-Width="150px" DataField="comment" HeaderText="Комментарий" />
                <asp:BoundField ItemStyle-Width="150px" DataField="added" HeaderText="added" Visible="false"/>
                
            </Columns>
        </asp:GridView>





              <asp:GridView ID="NeedsAdoptList" runat="server" AllowPaging="true" AutoGenerateColumns="false" GridLines="None">
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="id" HeaderText="id" Visible="false"/>
                <asp:HyperLinkField DataTextField="name_fam_ot" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="veterinary_clinic.aspx" HeaderText="Имя Фамилия Отчество" ItemStyle-Width = "150" />
                  <asp:BoundField ItemStyle-Width="150px" DataField="town" HeaderText="Город" />
                  <asp:BoundField ItemStyle-Width="150px" DataField="tel" HeaderText="Номер телефона" />
                <asp:BoundField ItemStyle-Width="150px" DataField="addr" HeaderText="Адрес" />
              
                <asp:BoundField ItemStyle-Width="150px" DataField="comment" HeaderText="Комментарий" />
                <asp:BoundField ItemStyle-Width="150px" DataField="added" HeaderText="added" Visible="false"/>
                
            </Columns>
        </asp:GridView>






            <asp:GridView ID="TempAdoptList" runat="server" AllowPaging="true" AutoGenerateColumns="false" GridLines="None">
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="id" HeaderText="id" Visible="false"/>
                <asp:HyperLinkField DataTextField="name_fam_ot" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="veterinary_clinic.aspx" HeaderText="Имя Фамилия Отчество" ItemStyle-Width = "150" />
                  <asp:BoundField ItemStyle-Width="150px" DataField="town" HeaderText="Город" />
                  <asp:BoundField ItemStyle-Width="150px" DataField="tel" HeaderText="Номер телефона" />
                <asp:BoundField ItemStyle-Width="150px" DataField="addr" HeaderText="Адрес" />
              
                <asp:BoundField ItemStyle-Width="150px" DataField="comment" HeaderText="Комментарий" />
                <asp:BoundField ItemStyle-Width="150px" DataField="added" HeaderText="added" Visible="false"/>
                
            </Columns>
        </asp:GridView>--%>




        </asp:Panel>
       
    </form>
    </asp:Content>

