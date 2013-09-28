{include file="header.tpl" title=$array.object.object_title}

{assign var="date" value="Дата"}
{assign var="description" value="Описание"}
{assign var="description_full" value="Расширенное описание"}
{assign var="image" value="Изображение"}

<section>	
 <div class="middle">
 	<fieldset>
	<ul>
	   	<li>
        	<dt>
            	<fieldset>
                <h4>{$array.object.object[$date|md5].value_content|date_format:"%d.%m"}</h4><i> / {$array.object.object[$date|md5].value_content|date_format:"%A"}</i>
                </fieldset>
            </dt>
            <dd>
            	<fieldset>
                <h3>{$array.object.object_title}</h3>
                <p>{$array.object.object[$description|md5].value_content}</p>
                </fieldset>
            </dd>
         </li>
    </ul>
	<br /><br />
    <article>
	<img src="{$SITE_URL}catalog_files/object/image/{$array.object.object[$image|md5].value_content}" class="width50" />
    <h3>{$array.object.object[$date|md5].value_content}</h3>
    <p>{$array.object.object[$description_full|md5].value_content}</p>
    </article>
    <br />
    <br />
    <div class="clearfix"></div>
    <br />
    <br />
    <center><i><h4><a href="{$SITE_URL}events/">eще события</a></h4></i></center>    
    </fieldset>
 </div>
</section>

{include file="footer.tpl"}