<?php

require ("conexao.php");

class Pedidos{

    public $id_pedido;
    public $nome_cliente;
    public $estado_endereco;
    public $bairro_endereco;
    public $logradouro_endereco;
    public $numero_endereco;
    public $cidade_endereco;
    public $telefone_cliente;
    public $quantidade;
    public $data;
    public $fkProduto;
    public $cpf_cliente;
    
    public static function exibePedidosJoined (){

        $conn =Conexao:: getConectaBD();
        $stmt = $conn->query("SELECT id_pedido,
        nome_cliente,
        bairro_endereco,
        logradouro_endereco,
        numero_endereco,
        cidade_endereco,
        telefone_cliente,
        quantidade,
        data_pedido,
        cpf_cliente,
        nome_produto,
        preco,
        nome_estado
        FROM fullstackeletro.pedidos
        INNER JOIN prodtos
        ON fk_produtos = idproduto
        INNER JOIN estados
        ON estado_endereco = idestado;");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function registro()
    {
        $conn = Conexao::getConectaBD();
        $stmt = $conn->query("INSERT INTO pedidos(nome_cliente,
            estado_endereco,
            bairro_endereco,
            logradouro_endereco,
            numero_endereco,
            cidade_endereco,
            telefone_cliente,
            quantidade,
            data_pedido,
            fk_produto,
            cpf_cliente) 
            VALUES (
                '$this->id_pedido',
                '$this->nome_cliente',
                '$this->estado_endereco',
                '$this->bairro_endereco',
                '$this->logradouro_endereco',
                '$this->numero_endereco',
                '$this->cidade_endereco',
                '$this->telefone_cliente',
                '$this->quantidade',
                NOW(),
                '$this->fkProduto',
                '$this->cpf_cliente')"
                );

                
        return $stmt;
    }
}