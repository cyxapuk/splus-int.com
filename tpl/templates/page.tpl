{include file="header.tpl"}

{if $array.auth_user <> ''}
<script src="{$_FILES_URL}_libs/ckeditor/ckeditor.js"></script>
<script>

CKEDITOR.editorConfig = function(config) {
   config.filebrowserBrowseUrl = '{$_FILES_URL}_libs/kcfinder/browse.php?type=files';
   config.filebrowserImageBrowseUrl = '{$_FILES_URL}_libs/kcfinder/browse.php?type=images';
   config.filebrowserFlashBrowseUrl = '{$_FILES_URL}_libs/kcfinder/browse.php?type=flash';
   config.filebrowserUploadUrl = '{$_FILES_URL}_libs/kcfinder/upload.php?type=files';
   config.filebrowserImageUploadUrl = '{$_FILES_URL}_libs/kcfinder/upload.php?type=images';
   config.filebrowserFlashUploadUrl = '{$_FILES_URL}_libs/kcfinder/upload.php?type=flash';
   config.allowedContent   = 'iframe[*]; embed[*]; object[*]; script[*]; a[*]; img[*]; h1[*]; h2[*]; h3[*]; h4[*]; h5[*]; h6[*]; fieldset[*]; ul[*]; li[*]; p[*]; br[*]; div[*]; span[*]; label[*]; hr; strong[*]; b[*]; table[*]; tr[*]; td[*]; th[*];';
}

CKEDITOR.on( 'instanceCreated', function( event ) {
	var editor = event.editor, element = editor.element;
});

function saveContents() {
    
    $.ajax({
      type: "POST",
      url: "{$SITE_URL}ajax/save.php",
      data: { page_id: "{$array.page_id}", left: CKEDITOR.instances.editor1.getData(), right: CKEDITOR.instances.editor2.getData()}
    }).done(function( msg ) {
      alert( "Изменения сохранены!" );
    }).fail(function() { 
        alert("Произошла ошибка!"); 
    });
}

$(window).load(function(){
    $(".saveEdit").insertAfter('body');
    $(".saveEdit").show();    
});

</script>

<style>
.cke_dialog_ui_button
{
    margin-top:35px !important;
}
</style>

<div class="saveEdit"><input type="button" value="Сохранить изменения" onclick="saveContents();" /></div>
{/if}

<section>	
	<div class="left"{if $array.auth_user <> ''} contenteditable="true"{/if}>
        {$array.pagecontent.left|default:'<fieldset><p>Левый блок для текста</p></fieldset>'}
    </div>
    <div class="right"{if $array.auth_user <> ''} contenteditable="true"{/if}>
    {$array.pagecontent.right|default:'<fieldset><p>Правый блок для текста</p></fieldset>'}
    </div>
</section>

{include file="footer.tpl"}