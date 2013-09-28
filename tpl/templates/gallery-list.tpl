{include file="header.tpl"}

{assign var="image" value="Картинка"}

<section>	
 <div class="middle">
 	<fieldset>
	<h3>Галлерея</h3>
    </fieldset>
    {if $array.categorylist}
    <article>
        {foreach from=$array.categorylist key=key item=category}
    	<figure>
            <a href="{$SITE_URL}gallery/{$category.catalog_id}/{$category.category_id}/"><img src="{$SITE_URL}catalog_files/category/image/{$category.category[$image|md5].value_content}" /></a>
            <h5><a href="{$SITE_URL}gallery/{$category.catalog_id}/{$category.category_id}/">{$category.category_title}</a></h5>
        </figure>
        {/foreach}
    </article>    
    {/if}       
 </div>
</section>

{include file="footer.tpl"}