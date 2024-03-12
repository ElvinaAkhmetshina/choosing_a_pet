﻿<%@ Page Title = "nutrition_calculation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="nutrition_calculation.aspx.cs" Inherits="choosing_a_pet.nutrition_calculation" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<link rel="stylesheet" href="myy.css">
    <form id="form2" runat="server">
<link rel="stylesheet" href="myyy.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap" rel="stylesheet">
    
        <asp:Panel ID="Contents" runat="server" CssClass="panel">
            <h2>Содержание:</h2>
             <div><a href="#Test">Тест "Сколько корма необходимо моей собаке"</a></div> 
            <div><a href="#CrackersOrNaturalFood">Сухарики или натуральная пища?</a> </div> 
            <div><a href="#DailyAllowanceOfDryDogFood">Дневная норма сухого корма для собак: рацион.</a>  </div> 
            <div><a href="#SelectDryDogFood">Подбираем сухой корм для собаки и рассчитываем размер порции</a>  </div> 
            <div><a href="#FeedingPuppyDryFood">Стоит ли кормить щенка сухим кормом.</a>  </div> 
            <div><a href="#AmountOfDryFoodForPuppy">Сколько сухого корма должен съедать щенок.</a></div>   
  
        </asp:Panel>

        <h3>Мы предлагаем вам пройти быстрый тест на опредления количества корма, который необходим вашей собаке. Если хотите изучить данную тему подробнее, то ниже представлена статья, которая поможет вам полностью разобраться в данной теме. Приятного прочтения!</h3>
         
        <asp:Panel ID="Calculator" runat="server" CssClass="panel">
            <div id="Test">
            <asp:Label ID="LDogSize" runat="server" Text="Какой породы ваша собака (по размеру)?"></asp:Label>
            <asp:RadioButtonList ID="DogSize" runat="server">
                 <asp:ListItem>Крупная</asp:ListItem>
                 <asp:ListItem>Средняя</asp:ListItem>
                 <asp:ListItem>Мелкая</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="LDogPrOrNot" runat="server" Text="Ваша собака в данный момент беременна?"></asp:Label>
            <asp:RadioButtonList ID="DogPrOrNot" runat="server">
                <asp:ListItem>Да</asp:ListItem>
                 <asp:ListItem>Нет</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="LDogAge" runat="server" Text="Какой возраст вашей собаки?"></asp:Label>
            <asp:RadioButtonList ID="DogAge" runat="server">
                <asp:ListItem>До 7 лет</asp:ListItem>
                 <asp:ListItem>Старше 7 лет</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="LDogActivity" runat="server" Text="Ваша собака ведёт активный образ жизни?"></asp:Label>
            <asp:RadioButtonList ID="DogActivity" runat="server">
                <asp:ListItem>Активная</asp:ListItem>
                 <asp:ListItem>Неактивная</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="LTime" runat="server" Text="Какой сейчас сезон?"></asp:Label>
            <asp:RadioButtonList ID="Time" runat="server">
                <asp:ListItem>Тепло</asp:ListItem>
                 <asp:ListItem>Холодно</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="LType" runat="server" Text="Корм какого класса вы планируете брать (по цене)?"></asp:Label>
            <asp:RadioButtonList ID="Type" runat="server" >
                <asp:ListItem>Эконом</asp:ListItem>
                 <asp:ListItem>Премиум</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="Calculate" runat="server" Text="Рассчитать примерный вес корма" OnClick="Calculate_Click" />
                <div>
                <asp:Label ID="LResRes" runat="server" Text="Рекомендуемая норма сухого корма (в граммах):"></asp:Label>
            <asp:Label ID="LRes" runat="server"></asp:Label>
                    </div>
                </div>
        </asp:Panel>





        <asp:Panel ID="Descriptions" runat="server" >
            <div id="CrackersOrNaturalFood">
                <h2>Сухарики или натуральная пища?</h2>
                <p>Среди заводчиков идут постоянные споры о том, чем все-таки лучше кормить своих питомцев: промышленным питанием или продуктами с хозяйского стола. На первый взгляд, второй вариант более приемлем, поскольку в этом случае собака будет питаться свежим мясом, овощами и молочными продуктами, тогда как сухой корм многими воспринимается как фастфуд для животных, аналог человеческих чипсов и сухариков. Мы спешим развеять этот миф: они разрабатываются учеными и ветеринарами, закладывая в них все необходимые питательные вещества, витамины и минералы, которые будут поддерживать метаболизм и здоровье собаки. В свою очередь, в домашних условиях достаточно трудно самостоятельно рассчитать правильный баланс белка, фолиевой кислоты, пребиотиков, витаминов A, D и E и прочих компонентов ежедневного рациона.
Кроме того, в составе учитываются те или иные предрасположенности разных пород к различным болезням, аллергиям и патологиям, снижая риск заболевания или развития отклонений.
Есть еще один не менее распространенный миф о том, что питомцам требуется разнообразное питание для полноценной жизни. Это не так: они достаточно консервативные животные в вопросе своих вкусовых предпочтений. Поэтому менять рацион рекомендуется только по мере взросления питомца, а также в отдельных случаях: если у собаки началась аллергия на конкретный корм, либо во время беременности и лактации.</p>
           </div>
            <asp:Image ID="Image1" runat="server" ImageUrl="nutrition_calculathion.jpg"  Width="400px" Height="300px"/>

            <div id="DailyAllowanceOfDryDogFood">
                <h2>Дневная норма сухого корма для собак: рацион.</h2>
                <p>Бытует миф, что кормление только сухим кормом вредно для здоровья. Поэтому многие подмешивают своим питомцам вкусности со стола. Такой «заботой» хозяева наносят вред животному: сухарики — это сбалансированный рацион, проверенный медиками и содержащий все необходимые витамины и минералы. Если вы решили добавить в рацион питомца какой-то продукт, то возможен переизбыток полезных веществ. Например, покормив животное с праздничного стола куриной ножкой, а потом дав сухариков, вы увеличили содержание белка в организме собаки. Переизбыток может привести к болезням желудка и кишечного тракта. Не экспериментируйте со здоровьем своего питомца.
Особенно важно соблюдать дозировку во время развития щенка.  Например, если он будет получать больше кальция, чем это необходимо при его возрасте и весе, повышается риск развития дисплазии тазобедренных суставов.
Сухой корм необходимо дозировать в зависимости от его класса и габаритов собаки. Рядом с миской должна всегда стоять питьевая вода в достаточном количестве. Здоровое взрослое животное выпивает в день 30-50 мл на один кг веса. Щенкам необходимо давать полстакана воды каждые два часа: из-за активного роста они быстрее расходуют калории и жидкость.</p>
            </div>
              <asp:Image ID="Image2" runat="server" ImageUrl="nutrition_calculathion2.jpg" Width="400px" Height="300px"/>
            <div id="SelectDryDogFood">
                <h2>Подбираем сухой корм для собаки и рассчитываем размер порции.</h2>
                <h3>Класс и марка.</h3>
                <p>Эконом-класс изготавливается из субпродуктов и злаков, в нем нет мяса. Его энергетическая ценность — 280-320 Ккал. Также необходимо ввести в рацион витаминно-минеральные добавки. Порция такой еды — самая большая. Кроме того, нередко недобросовестные производители пишут на упаковке состав, не соответствующий действительности, увеличивая дозу тех или иных ингредиентов или вовсе заменяя их на более качественные.
Премиум-класс изготавливается с добавлением мяса. Его энергетическая ценность — 320-400 Ккал. Такие корма более рекомендованы ветеринарами и опытными заводчиками, чем более дешевые марки класса эконом.
Супер-премиум класс изготавливается, в основном, из мяса и является полноценным рационом. Дополнительные полезные вещества в пищу собаки добавлять не надо. Энергетическая ценность — 400-450 Ккал.
Холистик на 60% состоит из мяса. Это самый питательный рацион. Порция— самая маленькая, но энергетическая ценность ее 400-450 Ккал. Однако профессионалы нередко говорят о том, что класс холистик не сильно отличается по своей питательной ценности от премиум и супер-премиум, а стоит такой корм дороже из-за принадлежности к самому премиальному классу.</p>
            <h3>Размер собаки</h3>
                <p>На упаковке каждого продукта должен указываться объем порции. Она разнится в зависимости от марки и энергетической ценности продукта. Одну порцию, как правило, делят на два приема пищи: утреннее и вечернее кормление.
В среднем псы крупных пород (например, немецкая овчарка, вес от 40 кг) потребляют 500 г корма премиум-класса и 700-800 г эконом в день. Продукт для них разрабатывается менее калорийный, потому что метаболизм животного медленный. То есть едят они много, но пища для них более диетическая.
Собаки средних пород (вес от 12 до 40 кг) съедают 350-450 г корма премиум и 550-650 г эконом-класса.
Для мелких пород подбирается самый калорийный рацион из-за их излишней активности. Маленькие (например, йоркширский терьер, вес до 12 кг) едят 150-300 г корма премиум-класса и 350-400 эконома в день.
</p>
                  <asp:Image ID="Image3" runat="server" ImageUrl="nutrition_calculathion3.jpg" Width="400px" Height="300px"/>
                 <h3>Сколько в день надо давать сухого корма беременной собаке.</h3>
                <p>Во время вынашивания потомства и периода лактации животное расходует больше энергии. Начиная с 42 дня беременности порции увеличивается на 25-50%. Обеспечьте беременной или кормящей собаке постоянный доступ к еде. В этом случае можно не соблюдать режим питания, если ваше животное не склонно к ожирению. Щенки и вскармливание израсходуют лишние калории, а  голодание в этот период гораздо опаснее. Однако все же регулярно взвешивайте животное, чтобы минимизировать риски.</p>
                 <h3>Возрастные ограничения при расчете порции.</h3>
                <p>Расход энергии животным меняется с возрастом. Щенки активны, они растут и им нужны калорийные корма и увеличенная порция. С достижением семи лет питомцы становятся спокойнее, энергетическая активность снижается, как и порция еды. А у крупных пород, например, у догов, процесс старения может начаться и вовсе с двух лет. В любом случае, вы либо придерживаетесь нижней границы при расчете порции, либо переводите собаку на специальный корм с отметкой Senior.</p>
                <h3>Расчет порции для собак с активным образом жизни.</h3>
                <p>Не все наши питомцы домоседы. Некоторые несут службу, участвуют в выставках. Уровень активности этих животных превышает среднестатистический расчет. Постоянная физическая нагрузка увеличивает энергетическое потребление. Порцию в этом случае необходимо увеличить на ⅓.
                </p>
                  <asp:Image ID="Image4" runat="server" ImageUrl="nutrition_calculation4.jpg" Width="400px" Height="300px"/>
                <h3>Сезонность как индикатор кормления.</h3>
                <p>Служебные собаки работают независимо от того, хорошая или плохая погода за окном. Часто свой пост животные несут на улице, и в холодное время года расходуют больше энергии. Организм потребляет дополнительные питательные вещества, чтобы сохранить тепло. Порцию сухого корма животного необходимо увеличить на ⅓ в холодное время года и уменьшить на ⅓ в теплое.
Взрослую собаку не стоит кормить более двух раз в день. Избыточное кормление может привести к ожирению, которое увеличивает риск сердечно-сосудистых заболеваний и проблем с опорно-двигательным аппаратом.
Важно понимать, что питание для вашего питомца — это не та статья расходов, на которой стоит экономить. Состав дешевых и дорогих кормов сильно отличается друг от друга. Так, продукт эконом-класса содержит в себе кровь, кости, копыта, рога, модифицированную сою и жмых овощных культур. Продукция премиум и супер-премиум классов более натуральна, она состоит из мяса, субпродуктов, кожи, костей, злаков и овощей. Опытные заводчики и ветеринары рекомендуют кормить собак более дорогими, но более натуральными кормами.
Если у питомца имеются проблемы со здоровьем, подбор правильного рациона обязательно должен производиться под контролем ветеринара. Он выберет диетический корм, который не навредит вашему питомцу.
Еще один нюанс, который стоит уточнить: нельзя мешать продукцию разных марок при кормлении. Следует покупать корм определенного производителя, который подходит вашей собаке и учитывает все ее индивидуальные особенности. Смешивание разных марок или сушки с натуралкой, может привести к дисбалансу витаминов в организме животного и нарушению функций пищеварительной системы.</p>
            </div>
              <asp:Image ID="Image5" runat="server" ImageUrl="nutrition_calculathion5.jpg" Width="400px" Height="300px"/>
            <div id="FeedingPuppyDryFood">
                <h2>Стоит ли кормить щенка сухим кормом.</h2>
                <p>Малыши активны, они растут и тратят больше энергии. Такая еда для них — это сбалансированное питание, содержащее все необходимые витамины и минералы для развития животного. Так как все жизненно важные процессы формируются в организме щенка, нужно быть особенно внимательным при подборе корма и расчете порции. Практически у каждого производителя, особенно премиум и супер-премиум класса, есть деление продукции по возрастам. Так что вы можете покупать именно тот, который соответствует возрасту вашего питомца.
В первый месяц жизни щенок питается материнским молоком, которое заменяется на искусственное питание только если сука отказалась вскармливать щенка или ее молоко токсично из-за болезни. Для успешного перевода щенка с натурального молока на порошковое его необходимо кормить не менее восьми раз в сутки, постепенно снижая количество кормления. Так, на третьей и четвертой неделе жизни щенка достаточно четырех раз в сутки, а затем питомца можно постепенно приучать к твердой пище. Начать стоит все же с влажного корма, который легко слизывать и глотать. Твердые гранулы  рекомендуется размачивать в воде. К третьему месяцу жизни молочные зубы щенка уже достаточно крепки, чтобы грызть.
</p>
            </div>

            <div id="AmountOfDryFoodForPuppy">
                <h2>Сколько сухого корма должен съедать щенок.</h2>
                <p>На каждой упаковке будет предложен расчет порции. В нем учитываются особенности породы и размер питомца. В среднем, количество еды для малыша крупной породы составляет 600-900 г корма премиум-класса и 900-1200 эконом-класса. Собаки средних пород в юном возрасте должны потреблять 450-600 г премиум и 600-800 г эконом-класса. Мелким – 200-400 г премиум и 450-600 г эконом-класса.</p>
            </div>
            </asp:Panel>
         
        
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