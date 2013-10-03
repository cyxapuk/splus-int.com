{include file="header.tpl" title=$array.category.category_title}

{assign var="category_description" value="Описание"}
{assign var="object_thumb" value="Иконка"}
{assign var="object_image" value="Изображение"}

<link href="{$_FILES_URL}_libs/pirobox/css/style_1/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="{$_FILES_URL}_libs/pirobox/js/pirobox_extended.js"></script>
<script>
$(document).ready(function() {
	$().piroBox_ext({
	piro_speed : 700,
		bg_alpha : 0.5,
		piro_scroll : true // pirobox always positioned at the center of the page
	});
});
</script>

<section>	
 <div class="middle">
 	<fieldset>
	<h3>Галлерея</h3>
    <br />
    <br />
    <br />
    <h5>{$array.category.category_title}</h5>
    <h6 class="float-left width60">{$array.category.category[$category_description|md5].value_content}</h6>
    <h5 class="float-right">{if $array.objectlist}{count($array.objectlist)}{else}0{/if} фото</h5>
    </fieldset>
    {if $array.objectlist}
    <article class="gallery_in">
        {foreach from=$array.objectlist key=key item=object}
    	<figure>
            <a href="{$SITE_URL}catalog_files/object/image/{$object.object[$object_image|md5].value_content}?r={math equation='rand(10,100)'}" rel="gallery"  class="pirobox_gall" title="{$object.object_title}"><img src="{$SITE_URL}catalog_files/object/image/{$object.object[$object_thumb|md5].value_content}?ir={math equation='rand(10,100)'}" /></a>
        </figure>
        {/foreach}
    </article>
    {/if}    
    <div class="clearfix"></div>
    <br />
    <br />
    <center><i><h4><a href="{$SITE_URL}gallery/">eще альбомы</a></h4></i></center>
    <br />
    <br />        
 </div>
</section>

{include file="footer.tpl"}