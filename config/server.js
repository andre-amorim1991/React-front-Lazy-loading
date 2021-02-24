const express = require('express');
const server = express();

server.unsubscribe(express.json());

// server.get('/', (req, res) => {
//     res.render("../src/app.js");
// })

server.get('/pedidos', (req, res) => {
    res.render("../src/paginas/pedidos");
})

server.get("/produtos", (req, res) =>{
    res.render("../src/paginas/produtos");
})

server.get("/lojas", (req, res) => {
    res.render("../src/paginas/lojas");
})

server.get("/contato", (req, res) => {
    res.render("../src/paginas/contato");
})

server.get("/mostrarpedidos", (req, res) => {
    res.render("../src/paginas/mostrarpedidos")
})



server.listen(3332);
console.log("Servidor rodando na porta 3332.")