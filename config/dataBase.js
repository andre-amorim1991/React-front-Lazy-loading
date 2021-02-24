let mysql = require('mysql'); // faz a requisição do pacote mysql

let connMySQL = function(){
    console.log("Conexão com BD estabelecida!");
    return connection = mysql.createConnection({ //cria a conexão com o banco de dados
        host: 'localhost',
        user: "root",
        password: '',
        database: "fullstackeletro"    
    });
}

module.exports = function (){
    return connMySQL;
}