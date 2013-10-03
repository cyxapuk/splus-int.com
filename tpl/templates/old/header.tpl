<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
{if isset($title)}
<title>{$title}</title>
{else}
<title>{$array.page.Title[$array.site.LangId]}</title>
{/if}
<!--[if lt IE 9]>
	<script src="{$_FILES_URL}js/html5shiv.js"></script>
<![endif]-->
<link href="{$_FILES_URL}css/style.css" rel="stylesheet" type="text/css" />
<link href="{$_FILES_URL}css/reset.css" rel="stylesheet" type="text/css" />
<script src="{$_FILES_URL}js/jquery-1.8.2.js"></script>
<script src="{$_FILES_URL}js/jquery-ui.js"></script>
<script src="{$_FILES_URL}js/script.js" language="javascript" /></script>
</head>

<body>
{if $array.target == 'announcements-list.tpl'}
    <div class="wrapper" id="pC">
{else}
    <div class="wrapper inpage">
{/if}

<header>
    <div class="top">    	
        <a href="{$SITE_URL}" class="logo"></a>        
        <div class="social">
        	<!--<a href="#social-1" class="social-1"></a>
        	<a href="#social-2" class="social-2"></a>
        	<a href="#social-3" class="social-3"></a>
            -->
        	<a href="http://vk.com/kokonspace" class="social-4" target="_blank" title="Мы в facebook"></a>
        	<!--<a href="#social-5" class="social-5"></a>-->
        	<a href="http://www.facebook.com/groups/187972511332781/" class="social-6" target="_blank" title="Мы в Вконтакте"></a>                                                            
        </div>    
    </div>
    <div class="nav">
    {if $array.headmenulist}
    <ul>
         {foreach from=$array.headmenulist key item=menu_page name=headmenulist}
            {if $array.site.Alias}
                {if $array.pagelist[$menu_page.PageId].Alias}
                    <li{if $menu_page.PageId == $array.page.Id} class="active"{/if}><a href="{$SITE_URL}{$array.pagelist[$menu_page.PageId].Alias}/">{$array.pagelist[$menu_page.PageId].Title[$array.site.LangId]}</a></li>
                {else}
                    <li{if $menu_page.PageId == $array.page.Id} class="active"{/if}><a href="{$SITE_URL}?page_id={$array.pagelist[$menu_page.PageId].Id}">{$array.pagelist[$menu_page.PageId].Title[$array.site.LangId]}</a></li>
                {/if}
            {else}
                <li{if $menu_page.PageId == $array.page.Id} class="active"{/if}><a href="{$SITE_URL}?page_id={$array.pagelist[$menu_page.PageId].Id}">{$array.pagelist[$menu_page.PageId].Title[$array.site.LangId]}</a></li>
            {/if}         
         {/foreach}
    </ul>
    {/if}
    </div>
</header>