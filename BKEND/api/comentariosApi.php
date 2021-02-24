<?php

require ("conexao.php");

class comentariosApi {

    
        public $id;
        public $nome;
        public $comentario;
        public $data;
    
        public static function getComments()
        {
            $conn = Conexao::getConectaBD();
            $stmt = $conn->query("SELECT * FROM comentarios");
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    
        public function registerComment()
        {
            $conn = Conexao::getConectaBD();
            $stmt = $conn->query("INSERT INTO comentarios(nome,comentario,data) VALUES ('$this->nome','$this->comentario',NOW())");
            if($stmt->rowCount()>0){
                return true;
            } else {
                return false;
            }
        }
    
    
    }

