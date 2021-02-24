<?php

header("Access-Control-Allow-Origin:*"); // Permite que outras aplicações consumam a api
header("Content-type: application/json"); //Indicação de arquivo JSON

require 'api/comentariosApi.php';

$comment = new comentariosApi;
$comment->nome = $_POST['nomemsg'];
$comment->comentario = $_POST['mensagemmsg'];

$validate = $comment->registerComment();

if ($validate == true) {
    print_r(json_encode(true));
} else {
    print_r(json_encode(false));
}