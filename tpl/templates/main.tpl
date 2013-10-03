<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
{if isset($title)}
<title>{$title}</title>
{else}
<title>{$array.page.Title[$array.site.LangId]}</title>
{/if}
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="{$_FILES_URL}css/style.css" rel="stylesheet" type="text/css">
<link href="{$_FILES_URL}bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css">
<link href="{$_FILES_URL}bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="http://bootstrap-ru.com/assets/js/jquery.js"></script>
<script src="{$_FILES_URL}bootstrap/js/bootstrap.js"></script>
<script src="{$_FILES_URL}js/script.js"></script>
</head>

<body>
	<div class="container">
    {if $array.languages}
        <div class="row flags">
        {foreach from=$array.languages key=key item=language}
            <div class="span1"><a href="{$SITE_URL}{$language.Abr}"><img src="{$_FILES_URL}images/flags/{$language.Abr}.png"{if $site.LangId == $language.Id} class="active"{/if}></a></div>
        {/foreach}
        <div class="span4 contact-link"><a class="btn btn-inverse contact-link" data-toggle="modal" href="#myModalContact">Обратная связь</a></div>
        </div>    
    {/if}
    
      <!--
      <div class="row flags">
			<div class="span1"><a href="#"><img src="{$_FILES_URL}images/flags/ru.png" class="active"></a></div>
            <div class="span1"><a href="#"><img src="{$_FILES_URL}images/flags/en.png"></a></div>
            <div class="span1"><a href="#"><img src="{$_FILES_URL}images/flags/fr.png"></a></div>
            <div class="span1"><a href="#"><img src="{$_FILES_URL}images/flags/es.png"></a></div>
            <div class="span1"><a href="#"><img src="{$_FILES_URL}images/flags/de.png"></a></div>
            <div class="span1"><a href="#"><img src="{$_FILES_URL}images/flags/fi.png"></a></div>
            <div class="span1"><a href="#"><img src="{$_FILES_URL}images/flags/sw.png"></a></div>
            <div class="span1"><a href="#"><img src="{$_FILES_URL}images/flags/nw.png"></a></div>
            <div class="span4 contact-link"><a class="btn btn-inverse contact-link" data-toggle="modal" href="#myModalContact">Обратная связь</a></div>
      </div>
      -->
      <div class="row">
      		<div class="span12 br-topline">&nbsp;</div>
      </div>
      <div class="row">
      		<div class="span12 br">&nbsp;</div>
      </div>
	  <div class="row">  
	        <div class="span1"></div>          
      		<div class="span4 box">
            <h5>
            Арбитражный суд Москвы зарегистрировал иск ЗАО ТД «Сетуньская», компании Елены Батуриной, к министерству финансов России о взыскании 34 миллиардов рублей, сообщает РИА Новости.
            На территории планировалось построить многофункциональный комплекс в рамках проекта.
            </h5>
            <p class="more-link"><a class="btn btn-warning" data-toggle="modal" href="#myModal">Узнать больше!</a></p>
            </div>
      		<div class="span2"></div>
      		<div class="span4 box">
            <h5>
            Арбитражный суд Москвы зарегистрировал иск ЗАО ТД «Сетуньская», компании Елены Батуриной, к министерству финансов России о взыскании 34 миллиардов рублей, сообщает РИА Новости.
            На территории планировалось построить многофункциональный комплекс в рамках проекта.
            </h5>
            <p class="more-link"><a class="btn btn-warning" data-toggle="modal" href="#myModal">Узнать больше!</a></p>
            </div>
            <div class="span1"></div>                        
      </div>
	  <div class="row">            
      		<div class="span1"></div>
            <div class="span4 label-text"><h1>System</h1></div>
      		<div class="span2 logo"><img src="{$_FILES_URL}images/logo.png"></div>
      		<div class="span4 label-text"><h1>Plus</h1></div> 
            <div class="span1"></div>                       
      </div> 
	  <div class="row">  
	        <div class="span1"></div>          
      		<div class="span4 box">
            <h5>
            Арбитражный суд Москвы зарегистрировал иск ЗАО ТД «Сетуньская», компании Елены Батуриной, к министерству финансов России о взыскании 34 миллиардов рублей, сообщает РИА Новости.
            На территории планировалось построить многофункциональный комплекс в рамках проекта.
            </h5>
            <p class="more-link"><a class="btn btn-warning" data-toggle="modal" href="#myModal">Узнать больше!</a></p>
            </div>
      		<div class="span2"></div>
      		<div class="span4 box">
            <h5>
            Арбитражный суд Москвы зарегистрировал иск ЗАО ТД «Сетуньская», компании Елены Батуриной, к министерству финансов России о взыскании 34 миллиардов рублей, сообщает РИА Новости.
            На территории планировалось построить многофункциональный комплекс в рамках проекта.
            </h5>
            <p class="more-link"><a class="btn btn-warning" data-toggle="modal" href="#myModal">Узнать больше!</a></p>
            </div>
            <div class="span1"></div>                        
      </div>      
      <div class="row">
      		<div class="span12 br">&nbsp;</div>
      </div>      
      <div class="row">
      		<div class="span12 br-topline">&nbsp;</div>
      </div>
      <div class="row">
      	<div class="span12 footer"><h6>Все права защищены 2013.</h6></div>
      </div>
                 
	</div>
    
    
    
    
<!-- Modal -->
<div class="modal hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:800px; left:40%;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">Елена Батурина подала в суд на Минфин</h3>
  </div>
  <div class="modal-body">
    <p><img src="{$_FILES_URL}images/baturina.jpg" /></p>
    <p>Арбитражный суд Москвы зарегистрировал иск ЗАО ТД «Сетуньская», компании Елены Батуриной, к министерству финансов России о взыскании 34 миллиардов рублей, сообщает РИА Новости. Иск поступил в суд 23 сентября, но к производству пока не принят.</p>
    <p>Батурина несколько лет судится с органами государственной власти из-за принадлежности земельных участков на пересечении Минской и Староволынской улиц. Компания «Сетуньская» заявляет, что 16 гектаров на этой территории принадлежит ей, что и было оформлено в 2003 году после приобретения на вторичном рынке у АОЗТ «Матвеевское».</p>
    <p>На территории планировалось построить многофункциональный комплекс в рамках проекта, который первоначально назывался «Сетунь-хиллс». Между тем, государство заявляет, что имеет полное право на эти участки, поскольку земля была зарезервирована под размещение иностранных посольств президентским указом 1993 года.</p>
    <p>Хотя Батурина настаивала на том, что данный указ является незаконным, поскольку «Матвеевское» приобрело данные земли до опубликования указа, российские суды ее требования не удовлетворили. Последняя тяжба завершилась в июле, когда Высший Арбитражный суд принял сторону Росимущества. </p>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Закрыть</button>
  </div>
</div>    


<!-- Modal Contact Form -->
<div class="modal hide fade" id="myModalContact" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">Связаться с нами</h3>
  </div>
  <div class="modal-body">
    <form class="form-horizontal">
      <div class="control-group">
        <label class="control-label" for="inputName">Имя</label>
        <div class="controls">
          <input type="text" id="inputName" placeholder="Имя" required>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputSurName">Фамилия</label>
        <div class="controls">
          <input type="text" id="inputSurName" placeholder="Фамилия" required>
        </div>
      </div>      
      <div class="control-group">
        <label class="control-label" for="inputEmail">Email</label>
        <div class="controls">
          <input type="email" id="inputEmail" placeholder="Email" required>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputEmail">Сообщение</label>
        <div class="controls">
          <textarea id="message" maxlength="10" rows="4"></textarea>
        </div>
      </div>      
      <div class="control-group">
        <div class="controls">
          <button type="submit" class="btn btn-primary">Отправить сообщение!</button>
        </div>
      </div>
    </form>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Закрыть</button>
  </div>
</div> 
    
    
    
    
    
</body>
</html>
