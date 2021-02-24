<?php

header("Access-Control-Allow-Origin:*"); // Permite que outras aplicações consumam a api
header("Content-type: application/json"); //Indicação de arquivo JSON

require 'api/pedidosApi.php';

$pedido = new Pedidos;
$pedido->nome = $_POST['nomecliente'];
$pedido->estado = $_POST['estado'];
$pedido->bairro = $_POST['bairro'];
$pedido->logradouro = $_POST['rua'];
$pedido->numero = $_POST['numero'];
$pedido->cidade = $_POST['cidade'];
$pedido->telefone = $_POST['telefone'];
$pedido->quantidade = $_POST['qntd'];
$pedido->fkProduto = $_POST['idproduto'];
$pedido->cpf = $_POST['cpf'];


$validate = $pedido->registro();

if ($validate == true) {
    print_r(json_encode(true));
} else {
    print_r(json_encode(false));
}
