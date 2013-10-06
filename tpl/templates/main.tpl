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

{if $site['LangId'] == 1}
    {assign var="terms" value="Все права защищены"}
    {assign var="more_button" value="Узнать больше!"}
    {assign var="contact_button" value="Обратная связь"}
    {assign var="close_button" value="Закрыть"}
    {assign var="form_name" value="Имя"}
    {assign var="form_surname" value="Фамилия"}
    {assign var="form_email" value="Email"}
    {assign var="form_message" value="Сообщение"}
    {assign var="form_send" value="Отправить сообщение!"}
{else}
    {assign var="terms" value="All rest reserved"}
    {assign var="more_button" value="Learn more!"}
    {assign var="contact_button" value="Contact with us"}
    {assign var="close_button" value="Close"}
    {assign var="form_name" value="Name"}
    {assign var="form_surname" value="Surname"}
    {assign var="form_email" value="Email"}
    {assign var="form_message" value="Message"}
    {assign var="form_send" value="Send message!"}
{/if}

{assign var="description" value="Описание"}
{assign var="button" value="Кнопка"}

<body>
	<div class="container">
      {if $array.languages}
        <div class="row flags">
        {foreach from=$array.languages key=key item=language}
            <div class="span1"><a href="{$SITE_URL}?lang={$language.Abr}"><img src="{$_FILES_URL}images/flags/{$language.Abr}.png"{if $site.LangId == $language.Id} class="active"{/if}></a></div>
        {/foreach}
        <div class="span4 contact-link"><a class="btn btn-inverse contact-link" data-toggle="modal" href="#myModalContact">{$contact_button}</a></div>
        </div>    
      {/if}
    
      <div class="row">
      		<div class="span12 br-topline">&nbsp;</div>
      </div>
      <div class="row">
      		<div class="span12 br">&nbsp;</div>
      </div>
	  <div class="row">  
	        <div class="span2"></div>          
      		<div class="span3 box">
            {if $array.objectlist[1]}
                <h5 class="center">{$array.objectlist[1].object[$description|md5].value_content[$array.site['LangId']]|html_entity_decode}</h5>
            <p class="more-link"><a class="btn btn-warning" data-toggle="modal" href="#myModal{$array.objectlist[1].object_id}">{$more_button}</a></p>
            {/if}
            </div>
      		<div class="span2"></div>
      		<div class="span3 box">
            {if $array.objectlist[2]}
                <h5 class="center">{$array.objectlist[2].object[$description|md5].value_content[$array.site['LangId']]|html_entity_decode}</h5>
            <p class="more-link"><a class="btn btn-warning" data-toggle="modal" href="#myModal{$array.objectlist[2].object_id}">{$more_button}</a></p>
            {/if}
            </div>
            <div class="span2"></div>                        
      </div>
	  <div class="row">            
      		<div class="span1"></div>
            <div class="span4 label-text"><h1>System</h1></div>
      		<div class="span2 logo"><img src="{$_FILES_URL}images/logo.png"></div>
      		<div class="span4 label-text"><h1>Plus</h1></div> 
            <div class="span1"></div>                       
      </div> 
	  <div class="row">  
	        <div class="span2"></div>          
      		<div class="span3 box">
            {if $array.objectlist[3]}
                <h5 class="center">{$array.objectlist[3].object[$description|md5].value_content[$array.site['LangId']]|html_entity_decode}</h5>
            <p class="more-link"><a class="btn btn-warning" data-toggle="modal" href="#myModal{$array.objectlist[3].object_id}">{$more_button}</a></p>
            {/if}
            </div>
      		<div class="span2"></div>
      		<div class="span3 box">
            {if $array.objectlist[4]}
                <h5 class="center">{$array.objectlist[4].object[$description|md5].value_content[$array.site['LangId']]|html_entity_decode}</h5>
            <p class="more-link"><a class="btn btn-warning" data-toggle="modal" href="#myModal{$array.objectlist[4].object_id}">{$more_button}</a></p>
            {/if}
            </div>
            <div class="span2"></div>                        
      </div>      
      <div class="row">
      		<div class="span12 br">&nbsp;</div>
      </div>      
      <div class="row">
      		<div class="span12 br-topline">&nbsp;</div>
      </div>
      <div class="row">
      	<div class="span12 footer"><h6>{$terms} 2013.</h6></div>
      </div>
                 
	</div>
    
    
{assign var="header" value="Заголовок"}
{assign var="bdescription" value="Расширенное описание"}
{assign var="image" value="Изображение"}    
    
{if $array.objectlist[1]}    
<!-- Modal -->
<div class="modal hide fade" id="myModal{$array.objectlist[1].object_id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:800px; left:40%;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">{$array.objectlist[1].object[$header|md5].value_content[$array.site['LangId']]}</h3>
  </div>
  <div class="modal-body">
    {if $array.objectlist[1].object[$image|md5].value_content}
    <p><img src="{$SITE_URL}catalog_files/object/image/{$array.objectlist[1].object[$image|md5].value_content}" /></p>
    {/if}
    {$array.objectlist[1].object[$bdescription|md5].value_content[$array.site['LangId']]|html_entity_decode}
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">{$close_button}</button>
  </div>
</div>    
{/if}

{if $array.objectlist[2]}    
<!-- Modal -->
<div class="modal hide fade" id="myModal{$array.objectlist[2].object_id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:800px; left:40%;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">{$array.objectlist[2].object[$header|md5].value_content[$array.site['LangId']]}</h3>
  </div>
  <div class="modal-body">
    {if $array.objectlist[2].object[$image|md5].value_content}
    <p><img src="{$SITE_URL}catalog_files/object/image/{$array.objectlist[2].object[$image|md5].value_content}" /></p>
    {/if}
    {$array.objectlist[2].object[$bdescription|md5].value_content[$array.site['LangId']]|html_entity_decode}
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">{$close_button}</button>
  </div>
</div>    
{/if}

{if $array.objectlist[3]}    
<!-- Modal -->
<div class="modal hide fade" id="myModal{$array.objectlist[3].object_id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:800px; left:40%;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">{$array.objectlist[3].object[$header|md5].value_content[$array.site['LangId']]}</h3>
  </div>
  <div class="modal-body">
    {if $array.objectlist[3].object[$image|md5].value_content}
    <p><img src="{$SITE_URL}catalog_files/object/image/{$array.objectlist[3].object[$image|md5].value_content}" /></p>
    {/if}
    {$array.objectlist[3].object[$bdescription|md5].value_content[$array.site['LangId']]|html_entity_decode}
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">{$close_button}</button>
  </div>
</div>    
{/if}

{if $array.objectlist[4]}    
<!-- Modal -->
<div class="modal hide fade" id="myModal{$array.objectlist[4].object_id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:800px; left:40%;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">{$array.objectlist[4].object[$header|md5].value_content[$array.site['LangId']]}</h3>
  </div>
  <div class="modal-body">
    {if $array.objectlist[4].object[$image|md5].value_content}
    <p><img src="{$SITE_URL}catalog_files/object/image/{$array.objectlist[4].object[$image|md5].value_content}" /></p>
    {/if}
    {$array.objectlist[4].object[$bdescription|md5].value_content[$array.site['LangId']]|html_entity_decode}
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">{$close_button}</button>
  </div>
</div>    
{/if}

<!-- Modal Contact Form -->
<div class="modal hide fade" id="myModalContact" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">{$contact_button}</h3>
  </div>
  <div class="modal-body">
    <form class="form-horizontal" action="{$SITE_URL}" method="post">
      <div class="control-group">
        <label class="control-label" for="inputName">{$form_name}</label>
        <div class="controls">
          <input type="text" name="name" id="inputName" placeholder="{$form_name}" required>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputSurName">{$form_surname}</label>
        <div class="controls">
          <input type="text" name="surName" id="inputSurName" placeholder="{$form_surname}" required>
        </div>
      </div>      
      <div class="control-group">
        <label class="control-label" for="inputEmail">{$form_email}</label>
        <div class="controls">
          <input type="email" name="email" id="inputEmail" placeholder="{$form_email}" required>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputEmail">{$form_message}</label>
        <div class="controls">
          <textarea id="message" name="message" maxlength="1000" rows="4"></textarea>
        </div>
      </div>      
      <div class="control-group">
        <div class="controls">
          <button type="submit" class="btn btn-primary">{$form_send}</button>
        </div>
      </div>
      <input type="hidden" name="send" value="1" />
    </form>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">{$close_button}</button>
  </div>
</div> 
    
    
    
    
    
</body>
</html>
