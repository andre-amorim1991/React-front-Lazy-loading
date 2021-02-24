<?php

    header("Access-Control-Allow-Origin:*");
    header("Control-type: application/json");

    require ("api/comentariosApi.php");

    $comentarios=new comentariosApi();
    print_r(json_encode($comentarios));