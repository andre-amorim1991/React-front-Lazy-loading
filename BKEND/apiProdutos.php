<?php

    header("Access-Control-Allow-Origin:*");//Permite o consumo da API por outras aplicações
    header("Control-type: application/json"); //aplicação  de aruivo JSON

    include("api/produtosApi.php");
    
    $produtos= produtosApi::exibeProdutos();

    print_r(json_encode($produtos));
    