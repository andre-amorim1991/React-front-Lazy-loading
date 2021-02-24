<?php

class Conexao
{
    #concexão com o banco de dados
    public static function getConectaBD()
    {
        $conn = new PDO("mysql: host=localhost;dbname=fullstackeletro;charset=utf8", "root", "");

        if ($conn) {
            return $conn;
        }else {
            return "<h1> A concexão com banco de dados não foi estabelecida<h1>" ;
        }
    }
}