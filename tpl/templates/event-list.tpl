{include file="header.tpl"}

{assign var="date" value="Дата"}
{assign var="description" value="Описание"}

<section>	
 <div class="middle">
 	<fieldset>
    {if $array.objectlist}
	<ul>    	
        {foreach from=$array.objectlist key=key item=object}
        <li>
        	<dt>
            	<fieldset>
                <h4>{$object.object[$date|md5].value_content|date_format:"%d.%m"}</h4><i> / {$object.object[$date|md5].value_content|date_format:"%A"}</i>
                </fieldset>
            </dt>
            <dd>
            	<fieldset>
                <h3><a href="{$SITE_URL}events/{$array.catalog_id}/{$array.category_id}/{$object.object_id}/">{$object.object_title}</a></h3>
                <p>{$object.object[$description|md5].value_content}</p>
                </fieldset>
            </dd>
         </li>
        {/foreach}
    </ul>
    {/if}
    </fieldset>
 </div>
</section>


{include file="footer.tpl"}