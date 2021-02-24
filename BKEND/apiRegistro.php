<?php

header("Access-Control-Allow-Origin:*"); //Permite o consumo da API por outras aplicações
header("Control-type: application/json"); //aplicação  de arquivo JSON

include("api/pedidosApi.php");

$reg = new Pedidos();
$reg->exibePedidosJoined();

print_r(json_encode($reg));
