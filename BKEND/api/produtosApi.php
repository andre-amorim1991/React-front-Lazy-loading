<?php
include("conexao.php");

class produtosApi {

    #Exibição dos produtos em json
    public static function exibeProdutos(){

        $conn = Conexao:: getConectaBD();
        $stmt= $conn->query("SELECT * FROM produtos");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function getCategorias(){

        $conn = Conexao:: getConectaBD();
        $stmt= $conn->query(
        "SELECT COUNT(idproduto) as quantidade,
        'Todos' as categoria 
        from produtos UNION
        SELECT COUNT(categoria),
        categoria FROM produtos 
        GROUP BY categoria;");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }       
        
}