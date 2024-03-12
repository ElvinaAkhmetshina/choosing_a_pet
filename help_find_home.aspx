<%@ Page Title="help_find_home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="help_find_home.aspx.cs" Inherits="choosing_a_pet.help_find_home" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="nyyy.css">
    
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap" rel="stylesheet">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<%--      
             <asp:Panel ID="Contents" runat="server" cssClass="panel">
            <h2>Содержание:</h2>
            
            <a href="#Donate">Пожертвовать</a>
            <a href="#HelpInSearching">Хочу помочь в поисках потерявшейся собаки</a> 
            <a href="#HelpToShelter">Хочу помочь приюту</a> 
            <a href="#FoundLostDog">Нашёл потерявшуюся собаку</a>  
            <a href="#LostDog">Потерял собаку</a> 
            <a href="#TemporaryPetAdoption">Хочу взять на передержку</a>  
            <a href="#NeedsTemporaryPetAdoption">Возьмите на передержку</a>  
            
        </asp:Panel>--%>
            <asp:Panel ID="Content" runat="server">
                <div class="main" id="Donate">
                <h2>Пожертвовать</h2>
                <p>С помощью нашей платформы вы можете осуществить пожертвование для любой из организаций, осуществляющих деятельность по содержанию и помощи бездомным животным.</p>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>


<style>
 a:hover,
 a:focus{
 text-decoration: none;
 outline: none;
 }
.btn-gradient-primary {
 color: #fff;
 border: none;
 background: #7a5449;
 background: linear-gradient(45deg, #7a5449, #6640b2) !important;
 background: -webkit-bg-linear-gradient(45deg, #7a5449, #6640b2) !important; }
 .btn-gradient-primary:hover, .btn-gradient-primary:focus {
 color: #fff;
 background: #6f483d;
 background: linear-gradient(45deg, #6f483d, #603bab) !important;
 background: -webkit-bg-linear-gradient(45deg, #6f483d, #603bab) !important; }
 .btn-gradient-primary:not(:disabled):not(.disabled).active, .btn-gradient-primary:not(:disabled):not(.disabled):active {
 color: #fff;
 background: #633d32;
 background: linear-gradient(45deg, #633d32, #5935a3) !important;
 background: -webkit-bg-linear-gradient(45deg, #633d32, #5935a3) !important; }
 .btn-gradient-primary.disabled, .btn-gradient-primary:disabled {
 color: #fff;
 background: #bca9a4;
 background: linear-gradient(45deg, #bca9a4, #b29fd8) !important;
 background: -webkit-bg-linear-gradient(45deg, #bca9a4, #b29fd8) !important; }
</style>

 <div class="container">
 <div class="row">

<button class="btn btn-gradient-primary btn-lg btn-block" data-toggle="modal" data-target="#perevod">
<span><i class="fa fa-money"></i></span>
<span class="btn-text text-default">Сделать перевод</span>
</button> 

 </div>
 </div>

<div class="modal fade" id="perevod" tabindex="-1" role="dialog">

 <div class="modal-dialog modal-xl">
 <div class="modal-content"> 
 <div class="card">
 <div class="card-body">
 
 <button type="button" class="close text-danger" data-dismiss="modal" aria-label="Close">
 <span aria-hidden="true">&times;</span>
 </button>
 
<h4 class="py-10 text-center">Перевод сайту BootstrapTema</h4>
<form method="POST" action="https://yoomoney.ru/quickpay/confirm.xml">
<div class="form-group row">
<label class="col-sm-4 col-form-label">Сумма пожертвования ₽</label>
<div class="col-sm-8">
<input type="text" name="sum" value="" data-type="number" class="form-control" placeholder="Введите сумму">
</div>
</div>
<div class="form-group row">
<label class="col-sm-4 col-form-label">На ЮMoney кошелёк №</label>
<div class="col-sm-8">
<input type="text" name="receiver" value="4100117804701310" class="form-control" readonly>
</div>
</div>
<input type="hidden" name="targets" value="Перевод сайту BootstrapTema"> 
<div class="form-group row">
<label class="col-sm-4 col-form-label">Оставьте комментарий</label>
<div class="col-sm-8">
<input type="text" name="comment" class="form-control" placeholder="По желанию">
</div>
</div>
<input type="hidden" name="quickpay-form" value="donate">
<div class="form-group form-check">
<input type="radio" name="paymentType" value="PC" class="form-check-input">
<label class="form-check-label">ЮMoney Деньгами</label>
</div>
<div class="form-group form-check">
<input type="radio" name="paymentType" value="AC" class="form-check-input">
 <label class="form-check-label">Банковской картой</label>
</div>

<input type="submit" value="Перевести" class="btn btn-gradient-primary btn-block btn-lg">
</form>

 </div>
 </div>
 </div>
 </div>
 
</div>
                </div>
                <%-- <div class="main" id="HelpInSearching">
                <h2>Хочу помочь в поисках потерявшейся собаки.</h2>
                <p>С помощью нашей платформы вы можете оставить объявление о желании помочь в поисках потерявшейся собаки.</p>
                     <asp:Label ID="LNameHelpSearch" runat="server" Text="Фамилия Имя Отчество"></asp:Label>
                     <asp:TextBox ID="TNameHelpSearch" runat="server"></asp:TextBox>
                     <asp:Label ID="LTownHelpSearch" runat="server" Text="Город"></asp:Label>
                     <asp:TextBox ID="TTownHelpSearch" runat="server"></asp:TextBox>
                     <asp:Label ID="LTelHelpSearch" runat="server" Text="Номер Телефона"></asp:Label>
                     <asp:TextBox ID="TTelHelpSearch" runat="server"></asp:TextBox>
                     <asp:Label ID="LAddrHelpSearch" runat="server" Text="Адрес/район"></asp:Label>
                     <asp:TextBox ID="TAddrHelpSearch" runat="server"></asp:TextBox>
                     <asp:Label ID="LTimeHelpSearch" runat="server" Text="Когда удобно помочь"></asp:Label>
                     <asp:TextBox ID="TTimeHelpSearch" runat="server"></asp:TextBox>
                     <asp:Button ID="ButtonSearching" runat="server" Text="Оставить заявку" OnClick="ButtonSearching_Click"/>
                     </div>
                 <div class="main" id="HelpToShelter">
                <h2>Хочу помочь приюту</h2>
                <p>С помощью нашей платформы вы можете оставить объявление о желании помочь приюту в качестве волонтера.</p>
                     <asp:Label ID="LNameHelpShelter" runat="server" Text="Фамилия Имя Отчество"></asp:Label>
                     <asp:TextBox ID="TNameHelpShelter" runat="server"></asp:TextBox>
                     <asp:Label ID="LTownHelpShelter" runat="server" Text="Город"></asp:Label>
                     <asp:TextBox ID="TTownHelpShelter" runat="server"></asp:TextBox>
                     <asp:Label ID="LTelHelpShelter" runat="server" Text="Номер Телефона"></asp:Label>
                     <asp:TextBox ID="TTelHelpShelter" runat="server"></asp:TextBox>
                     <asp:Label ID="LAddrHelpShelter" runat="server" Text="Адрес/район"></asp:Label>
                     <asp:TextBox ID="TAddrHelpShelter" runat="server"></asp:TextBox>
                     <asp:Label ID="LTimeHelpShelter" runat="server" Text="Когда удобно помочь"></asp:Label>
                     <asp:TextBox ID="TTimeHelpShelter" runat="server"></asp:TextBox>
                       <asp:Button ID="ButtonShelter" runat="server" Text="Оставить заявку" OnClick="ButtonShelter_Click"/>
           </div>--%>

                <div class="main" id="FoundLostDog">
                <h2>Хочу оставить объявление</h2>
                <p>С помощью нашей платформы вы можете оставить объявление о:
                    Нахождении собаки.
                    Потере собаки.
                    Желании взять собаку на передержку.
                    Желании отдать собаку на передержку.
                    Желании помочь приюту.
                </p>
                    <div>  <asp:Label ID="LNameFound" runat="server" Text="Фамилия Имя Отчество"></asp:Label>
                     <asp:TextBox ID="TNameFound" runat="server"></asp:TextBox></div> 
                    <div>  <asp:Label ID="LTownFound" runat="server" Text="Город"></asp:Label>
                     <asp:TextBox ID="TTownFound" runat="server"></asp:TextBox></div> 
                     <div> <asp:Label ID="LTelFound" runat="server" Text="Номер Телефона"></asp:Label>
                     <asp:TextBox ID="TTelFound" runat="server"></asp:TextBox></div> 
                     <div> <asp:Label ID="LAddrFound" runat="server" Text="Адрес/район"></asp:Label>
                     <asp:TextBox ID="TAddrFound" runat="server"></asp:TextBox></div> 
                     <div> <asp:Label ID="LCommentFound" runat="server" Text="Комментарий: "></asp:Label>
                     <asp:TextBox ID="TCommentFound" runat="server"></asp:TextBox></div> 
                     <asp:Label ID="LFoundLostDog" runat="server" Text="Сюда вы можете прикрепить фото."></asp:Label>
                    <input id="IFoundLostDog" type="file" runat="server" name="IFoundLostDog"/>
                      <asp:Button ID="ButtonFound" runat="server" Text="Оставить заявку" OnClick="ButtonFound_Click"/>
           </div>

                <%--<div class="main" id="LostDog">
                <h2>Потерял собаку</h2>
                <p>С помощью нашей платформы вы можете оставить объявление о потере собаки и найти волонтеров для помощи в её поисках.</p>
                     <asp:Label ID="LNameFind" runat="server" Text="Фамилия Имя Отчество"></asp:Label>
                     <asp:TextBox ID="TNameFind" runat="server"></asp:TextBox>
                     <asp:Label ID="LTownFind" runat="server" Text="Город"></asp:Label>
                     <asp:TextBox ID="TTownFind" runat="server"></asp:TextBox>
                     <asp:Label ID="LTelFind" runat="server" Text="Номер Телефона"></asp:Label>
                     <asp:TextBox ID="TTelFind" runat="server"></asp:TextBox>
                     <asp:Label ID="LAddrFind" runat="server" Text="Адрес/район"></asp:Label>
                     <asp:TextBox ID="TAddrFind" runat="server"></asp:TextBox>
                     <asp:Label ID="LCommentFind" runat="server" Text="Описание потерявшейся собаки"></asp:Label>
                     <asp:TextBox ID="TCommentFind" runat="server"></asp:TextBox>
                    <asp:Label ID="LLostDogPhoto" runat="server" Text="Сюда вы можете прикрепить фото потерявшейся собаки."></asp:Label>
                    <input id="ILostDog" type="file" runat="server" name="ILostDog"/>
                      <asp:Button ID="ButtonLost" runat="server" Text="Оставить заявку" OnClick="ButtonLost_Click"/>
                </div>
           <div class="main" id="TemporaryPetAdoption">
                <h2>Хочу взять на передержку</h2>
                <p>С помощью нашей платформы вы можете оставить объявление о желании взять собаку на передержку.</p>
                        <asp:Label ID="LNameAdopt" runat="server" Text="Фамилия Имя Отчество"></asp:Label>
                     <asp:TextBox ID="TNameAdopt" runat="server"></asp:TextBox>
                     <asp:Label ID="LTownAdopt" runat="server" Text="Город"></asp:Label>
                     <asp:TextBox ID="TTownAdopt" runat="server"></asp:TextBox>
                     <asp:Label ID="LTelAdopt" runat="server" Text="Номер Телефона"></asp:Label>
                     <asp:TextBox ID="TTelAdopt" runat="server"></asp:TextBox>
                     <asp:Label ID="LAddrAdopt" runat="server" Text="Адрес/район"></asp:Label>
                     <asp:TextBox ID="TAddrAdopt" runat="server"></asp:TextBox>
                     <asp:Label ID="LCommentAdopt" runat="server" Text="Комментарий"></asp:Label>
                     <asp:TextBox ID="TCommentAdopt" runat="server"></asp:TextBox>
                 <asp:Button ID="ButtonAdopt" runat="server" Text="Оставить заявку" OnClick="ButtonAdopt_Click"/>
           </div>
                 <div class="main" id="NeedsTemporaryPetAdoption">
                <h2>Возьмите на передержку</h2>
                <p>С помощью нашей платформы вы можете оставить объявлении о необходимости отдать собаку на передержку.</p>
           <asp:Label ID="LNameNeedsAdopt" runat="server" Text="Фамилия Имя Отчество"></asp:Label>
                     <asp:TextBox ID="TNameNeedsAdopt" runat="server"></asp:TextBox>
                     <asp:Label ID="LTownNeedsAdopt" runat="server" Text="Город"></asp:Label>
                     <asp:TextBox ID="TTownNeedsAdopt" runat="server"></asp:TextBox>
                     <asp:Label ID="LTelNeedsAdopt" runat="server" Text="Номер Телефона"></asp:Label>
                     <asp:TextBox ID="TTelNeedsAdopt" runat="server"></asp:TextBox>
                     <asp:Label ID="LAddrNeedsAdopt" runat="server" Text="Адрес/район"></asp:Label>
                     <asp:TextBox ID="TAddrNeedsAdopt" runat="server"></asp:TextBox>
                     <asp:Label ID="LCommentNeedsAdopt" runat="server" Text="Описание собаки"></asp:Label>
                     <asp:TextBox ID="TCommentNeedsAdopt" runat="server"></asp:TextBox>
                      <asp:Label ID="LNeedsAdopt" runat="server" Text="Сюда вы можете прикрепить фото собаки."></asp:Label>
                    <input id="INeedsAdopt" type="file" runat="server" name="INeedsAdopt"/>
                       <asp:Button ID="ButtonNeedsAdopt" runat="server" Text="Оставить заявку" OnClick="ButtonNeedsAdopt_Click"/>
                 </div>--%>
                
            </asp:Panel>

        
    </form>
</body>
</html>
</asp:Content>
