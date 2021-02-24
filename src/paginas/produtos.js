import { useState, useEffect } from 'react';
import { Container } from 'react-bootstrap';
import "./paginas.css";
import { Link } from "react-router-dom";
// import Func from './funcoes';



export default function Produtos() {

    const [produto, setProduto] = useState([]);

    useEffect(async () => {

        const url = "http://projetos/fullstackeletro/BKEND/apiProdutos.php"; // Caminhdo da pasta dentro do arquivo ultmo projeto de bootstrap!
        // const url = "http://localhost:3000/BKEND/apiProdutos"; //caminho da pasta BKAND dentro da aplicação react
        const resposta = await fetch(url);

        setProduto(await resposta.json())

    }, [])
    return (
        <Container fluid>
            <div class="menuproduto">

                <div class="container-sm text">
                    <ul class="list-group-flush">
                        <p class="list-group-item-action active" onClick="{exibirTodos}">Todos (12)</p>
                        <p class="list-group-item-action active" onClick="{exibirCategoria}">Geladeiras (3)</p>
                        <p class="list-group-item-action active" onClick="exibirCategoria('fogao')">Fogões (2)</p>
                        <p class="list-group-item-action active" onClick="exibirCategoria('microondas')">Microondas (3)</p>
                        <p class="list-group-item-action active" onClick="exibirCategoria('lavaroupas')">Lava roupas (2)</p>
                        <p class="list-group-item-action active" onClick="exibirCategoria('lavaloucas')">Lava louças(2)</p>
                    </ul>
                </div>
            </div>
            <div class="menuproduto">

                {produto.map((prodapi) => {
                    return (
                        <div class="produto">
                            <div class="card">
                                <div class="card-body">
                                    <div class="produtos" id={prodapi.categoria}>
                                        <p><img class="card-img-top img" src={require("./" + prodapi.imagem).default} onmouseover="destaque(this)" onmouseout="destaque(this)" /></p>
                                        <p class="descricao card-text">{prodapi.descricao} </p>
                                        <p class="precoantigo card-text">R$ {prodapi.preco}</p>
                                        <p class="preconovo card-text">R$ {prodapi.preco_venda} </p>
                                        <Link to={{
                                            pathname: '/pedidos',
                                            search: '&produto=' + prodapi.descricao + '&preco=' + prodapi.preco_venda + '&produtoid=' + prodapi.idprodutos
                                        }} className="btn btn-block btn-danger">Comprar</Link>

                                        <br />
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </div>

                    )
                }
                )
                }

            </div>

        </Container>
    );
}