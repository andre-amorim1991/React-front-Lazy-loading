<?php

header("Access-Control-Allow-Origin:*"); // Permite que outras aplicações consumam a api
header("Content-type: application/json"); //Indicação de arquivo JSON

require 'api/produtosApi.php';

$cat = produtosApi::getCategorias();

print_r(json_encode($cat));