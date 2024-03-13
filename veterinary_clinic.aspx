<%@ Page Title="veterinary_clinic" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="veterinary_clinic.aspx.cs" Inherits="choosing_a_pet.veterinary_clinic" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <form id="form2" runat="server">
<link rel="stylesheet" href="myyy.css">
     <div class="main">
 <h1>Ветеринарные клиники</h1>
         <div class="center">
    <asp:Panel ID="VetClinics" runat="server">
        <asp:GridView ID="VetClinicsList" runat="server" AllowPaging="true" AutoGenerateColumns="false" GridLines="None">
            <Columns>
                <asp:HyperLinkField DataTextField="Name" DataNavigateUrlFields="Id" 
                    DataNavigateUrlFormatString="https://www.google.com/search?q=%D0%B2%D0%B5%D1%82%D0%B5%D1%80%D0%B8%D0%BD%D0%B0%D1%80%D0%BD%D1%8B%D0%B5+%D0%BA%D0%BB%D0%B8%D0%BD%D0%B8%D0%BA%D0%B8+%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D1%8C&biw=1280&bih=577&sxsrf=APwXEdcP5FhBZkYC5f-nXFVZUH2jHectvg%3A1683631445283&ei=VS1aZPbxENKbrwTRtLnYBA&oq=%D0%B2%D0%B5%D1%82%D0%B5%D1%80&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAxgAMgcIIxCKBRAnMgcIABCKBRBDMgcILhCKBRBDMgcIABCKBRBDMgcIABCKBRBDMg0IABCKBRCxAxDJAxBDMggIABCABBCSAzIICAAQigUQkgMyDQguEIoFEMcBEK8BEEMyCggAEIoFELEDEEM6BwgjEOoCECc6DQgAEI8BEOoCELQCGAE6DQguEI8BEOoCELQCGAE6CggAEIAEEBQQhwI6EQguEIAEELEDEIMBEMcBENEDOgsIABCABBCxAxCDAToICAAQgAQQsQM6DgguEIoFELEDEIMBENQCOgQIIxAnSgQIQRgAUIQFWN8JYKQRaAFwAXgAgAHDAYgBmQWSAQMwLjWYAQCgAQGwARTAAQHaAQYIARABGAo&sclient=gws-wiz-serp" 
                    HeaderText="Название" ItemStyle-Width = "150" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="id" HeaderText="id" Visible="false"/>
                    <asp:BoundField ItemStyle-Width="150px" DataField="addres" HeaderText="Адрес" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="reiting" HeaderText="Рейтинг" />
                    <asp:BoundField ItemStyle-Width="150px" DataField="added" HeaderText="Добавлено" Visible="false"/>
                    <asp:BoundField ItemStyle-Width="150px" DataField="tel" HeaderText="Номер телефона" />
            </Columns>
        </asp:GridView>
    </asp:Panel>
             </div>
     </div>
 </form>
</asp:Content>
