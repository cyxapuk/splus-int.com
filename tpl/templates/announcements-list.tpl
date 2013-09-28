{include file="header.tpl"}

{assign var="date" value="Дата"}
{assign var="description" value="Описание"}
{assign var="bg" value="Фон"}

{if $array.object_prev <> 0}
<a href="{$SITE_URL}main/{$array.catalog_id}/{$array.category_id}/{$array.object_prev}/" class="arrow_left" id="arrow_left"></a>
{/if}

{if $array.object_next <> 0}
<a href="{$SITE_URL}main/{$array.catalog_id}/{$array.category_id}/{$array.object_next}/" class="arrow_right" id="arrow_right"></a>
{/if}

<section>
	<div class="box">
        <h3 class="grey">{$array.object.object_title}</h3>
        <p class="white">{$array.object.object[$description|md5].value_content}</p>
        <h2 class="grey">{$array.object.object[$date|md5].value_content|date_format:"%d/%y"}</h2>
	</div>
</section>

<script>$('#pC').css("background-image", "url({$SITE_URL}catalog_files/object/image/{$array.object.object[$bg|md5].value_content})");</script>

{include file="footer.tpl"}