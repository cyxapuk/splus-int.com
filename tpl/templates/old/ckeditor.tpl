<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CKeditor</title>
<!--[if lt IE 9]>
	<script src="{$_FILES_URL}js/html5shiv.js"></script>
<![endif]-->
<link href="{$_FILES_URL}css/style.css" rel="stylesheet" type="text/css" />
<link href="{$_FILES_URL}css/reset.css" rel="stylesheet" type="text/css" />
<script src="{$_FILES_URL}js/jquery-1.8.2.js"></script>
<script src="{$_FILES_URL}js/jquery-ui.js"></script>
<script src="{$_FILES_URL}js/script.js" language="javascript" /></script>
<script src="{$_FILES_URL}_libs/ckeditor/ckeditor.js"></script>
</head>


<body>

<textarea cols="80" id="editor1" name="editor1" rows="10">This is some &lt;strong&gt;sample text&lt;/strong&gt;. You are using &lt;a href="http://www.fckeditor.net/"&gt;CKEditor&lt;/a&gt;.</textarea>

<script type="text/javascript">
CKEDITOR.editorConfig = function(config) {
   config.filebrowserBrowseUrl = '{$_FILES_URL}_libs/kcfinder/browse.php?type=files';
   config.filebrowserImageBrowseUrl = '{$_FILES_URL}_libs/kcfinder/browse.php?type=images';
   config.filebrowserFlashBrowseUrl = '{$_FILES_URL}_libs/kcfinder/browse.php?type=flash';
   config.filebrowserUploadUrl = '{$_FILES_URL}_libs/kcfinder/upload.php?type=files';
   config.filebrowserImageUploadUrl = '{$_FILES_URL}_libs/kcfinder/upload.php?type=images';
   config.filebrowserFlashUploadUrl = '{$_FILES_URL}_libs/kcfinder/upload.php?type=flash';
}
var editor = CKEDITOR.replace('editor1');

</script>
<style>
#cke_163_uiElement
{
    margin-top:35px !important;
}
</style>

</body>
</html>