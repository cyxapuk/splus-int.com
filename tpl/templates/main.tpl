{config_load file='config.conf'}

{assign var="button_contact" value="button_contact_`$site['LangAbr']`"}
{assign var="button_more" value="button_more_`$site['LangAbr']`"}

{if $site['LangAbr'] == 'ru'}
    {config_load file='ru.conf'}
{else}
    {config_load file='all.conf'}
{/if}

<!DOCTYPE html>
<html lang="{$site['LangAbr']}">
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
            <div class="span1"><a href="{$SITE_URL}{$language.Abr}/"><img src="{$_FILES_URL}images/flags/{$language.Abr}.png"{if $site.LangId == $language.Id} class="active"{/if}></a></div>
        {/foreach}
        <div class="span4 contact-link"><a class="btn btn-inverse contact-link" data-toggle="modal" href="#myModalContact">{$smarty.config[$button_contact]}</a></div>
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
            {if $array.objectlist[0]}
                <h5 class="center">{$array.objectlist[0].object[#description#|md5].value_content[$array.site['LangId']]|html_entity_decode}</h5>
            <p class="more-link"><a class="btn btn-warning" data-toggle="modal" href="#myModal{$array.objectlist[0].object_id}">{$smarty.config[$button_more]}</a></p>
            {/if}
            </div>
      		<div class="span2"></div>
      		<div class="span3 box">
            {if $array.objectlist[1]}
                <h5 class="center">{$array.objectlist[1].object[#description#|md5].value_content[$array.site['LangId']]|html_entity_decode}</h5>
            <p class="more-link"><a class="btn btn-warning" data-toggle="modal" href="#myModal{$array.objectlist[1].object_id}">{$smarty.config[$button_more]}</a></p>
            {/if}
            </div>
            <div class="span2"></div>                        
      </div>
	  <div class="row">            
      		<div class="span2"></div>
            <div class="span3 label-text"><h1>System</h1></div>
      		<div class="span2 logo"><a href="{$SITE_URL}"><img src="{$_FILES_URL}images/logo.png" border="0" /></a></div>
      		<div class="span3 label-text"><h1>Plus</h1></div> 
            <div class="span2"></div>                       
      </div> 
	  <div class="row">  
	        <div class="span2"></div>          
      		<div class="span3 box">
            {if $array.objectlist[2]}
                <h5 class="center">{$array.objectlist[2].object[#description#|md5].value_content[$array.site['LangId']]|html_entity_decode}</h5>
            <p class="more-link"><a class="btn btn-warning" data-toggle="modal" href="#myModal{$array.objectlist[2].object_id}">{$smarty.config[$button_more]}</a></p>
            {/if}
            </div>
      		<div class="span2"></div>
      		<div class="span3 box">
            {if $array.objectlist[3]}
                <h5 class="center">{$array.objectlist[3].object[#description#|md5].value_content[$array.site['LangId']]|html_entity_decode}</h5>
            <p class="more-link"><a class="btn btn-warning" data-toggle="modal" href="#myModal{$array.objectlist[3].object_id}">{$smarty.config[$button_more]}</a></p>
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
      	<div class="span12 footer"><h6>{#rights#}</h6></div>
      </div>
                 
	</div>
    
    
{if $array.objectlist[0]}    
<!-- Modal -->
<div class="modal hide fade" id="myModal{$array.objectlist[0].object_id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:800px; left:40%;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">{$array.objectlist[0].object[#header#|md5].value_content[$array.site['LangId']]}</h3>
  </div>
  <div class="modal-body">
    {if $array.objectlist[0].object[#image#|md5].value_content}
    <p><img src="{$SITE_URL}catalog_files/object/image/{$array.objectlist[0].object[#image#|md5].value_content}" /></p>
    {/if}
    {$array.objectlist[0].object[#bdescription#|md5].value_content[$array.site['LangId']]|html_entity_decode}
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">{#button_close#}</button>
  </div>
</div>    
{/if}

{if $array.objectlist[1]}    
<!-- Modal -->
<div class="modal hide fade" id="myModal{$array.objectlist[1].object_id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:800px; left:40%;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">{$array.objectlist[1].object[#header#|md5].value_content[$array.site['LangId']]}</h3>
  </div>
  <div class="modal-body">
    {if $array.objectlist[1].object[#image#|md5].value_content}
    <p><img src="{$SITE_URL}catalog_files/object/image/{$array.objectlist[1].object[#image#|md5].value_content}" /></p>
    {/if}
    {$array.objectlist[1].object[#bdescription#|md5].value_content[$array.site['LangId']]|html_entity_decode}
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">{#button_close#}</button>
  </div>
</div>    
{/if}

{if $array.objectlist[2]}    
<!-- Modal -->
<div class="modal hide fade" id="myModal{$array.objectlist[2].object_id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:800px; left:40%;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">{$array.objectlist[2].object[#header#|md5].value_content[$array.site['LangId']]}</h3>
  </div>
  <div class="modal-body">
    {if $array.objectlist[2].object[#image#|md5].value_content}
    <p><img src="{$SITE_URL}catalog_files/object/image/{$array.objectlist[2].object[#image#|md5].value_content}" /></p>
    {/if}
    {$array.objectlist[2].object[#bdescription#|md5].value_content[$array.site['LangId']]|html_entity_decode}
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">{#button_close#}</button>
  </div>
</div>    
{/if}

{if $array.objectlist[3]}    
<!-- Modal -->
<div class="modal hide fade" id="myModal{$array.objectlist[3].object_id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:800px; left:40%;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">{$array.objectlist[3].object[#header#|md5].value_content[$array.site['LangId']]}</h3>
  </div>
  <div class="modal-body">
    {if $array.objectlist[3].object[#image#|md5].value_content}
    <p><img src="{$SITE_URL}catalog_files/object/image/{$array.objectlist[3].object[#image#|md5].value_content}" /></p>
    {/if}
    {$array.objectlist[3].object[#bdescription#|md5].value_content[$array.site['LangId']]|html_entity_decode}
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">{#button_close#}</button>
  </div>
</div>    
{/if}

<!-- Modal Contact Form -->
<div class="modal hide fade" id="myModalContact" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">{$smarty.config[$button_contact]}</h3>
  </div>
  <div class="modal-body">
    <form class="form-horizontal" action="{$SITE_URL}" method="post" id="contact_form">
      <div class="control-group">
        <label class="control-label" for="inputName">{#form_name#}</label>
        <div class="controls">
          <input type="text" name="name" id="inputName" placeholder="{#form_name#}" required>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputSurName">{#form_surname#}</label>
        <div class="controls">
          <input type="text" name="surName" id="inputSurName" placeholder="{#form_surname#}" required>
        </div>
      </div>      
      <div class="control-group">
        <label class="control-label" for="inputEmail">{#form_email#}</label>
        <div class="controls">
          <input type="email" name="email" id="inputEmail" placeholder="{#form_email#}" required>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputEmail">{#form_message#}</label>
        <div class="controls">
          <textarea id="message" name="message" maxlength="1000" rows="4"></textarea>
        </div>
      </div>      
      <div class="control-group">
        <div class="controls">
          <button type="submit" class="btn btn-primary">{#form_send#}</button>
        </div>
      </div>
      <input type="hidden" name="send" value="1" />
    </form>
    {if $array.objectlist_contact[0]}
        <p class="center">{$array.objectlist_contact[0].object[#description#|md5].value_content[$array.site['LangId']]|html_entity_decode}</p>
    {/if}    
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">{#button_close#}</button>
  </div>
</div> 
    
    
<script type="text/javascript">

  if( document.referrer.indexOf('embed') != -1 ) {
	function getQueryUrl(qs) {
	    qs = qs.split("+").join(" ");

	    var params = {}, tokens,
	        re = /[?&]?([^=]+)=([^&]*)/g;

	    while (tokens = re.exec(qs)) {
	        params[decodeURIComponent(tokens[1])]
	            = decodeURIComponent(tokens[2]);
	    }

	    return params;
	}

	var query = getQueryUrl(document.referrer.split('?')[1]);

	if( query.utm_campaign.indexOf('_click') == -1 ) {
        	history.pushState(null, "", "?utm_campaign="+query.utm_campaign+"_click"+"&utm_medium="+query.utm_medium+"&utm_source="+query.utm_source+"_click");
        }
  }

var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-45129138-1']);
_gaq.push(['_trackPageview']);

(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();

</script>

<script>
$(document).ready(function () {
	$("#contact_form").submit(function(e){
		alert('{#form_send_ok#}');
	});
});
</script>
    
    
</body>
</html>
