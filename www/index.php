<?php

if($_SERVER['REMOTE_ADDR'] != '78.140.146.70')
{
    die("Сайт находится в стадии разработки");
}

include_once('../bin/starter.html');

$controller->displayPage();

?>