<?php

header("Access-Control-Allow-Origin:*");//Permite o consumo da API por outras aplicações
header("Control-type: application/json"); //aplicação  de arquivo JSON

require ("api/pedidosApi.php");

$pedidos=new Pedidos();

print_r(json_encode($pedidos));