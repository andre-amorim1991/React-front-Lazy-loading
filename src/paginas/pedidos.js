import React from 'react';
import { Container, } from "react-bootstrap";



function getInfo() {
    const queryString = window.location.href;
    const urlParams = new URLSearchParams(queryString);

    return [urlParams.get('produto'), urlParams.get('preco'), urlParams.get('produtoid')];
}


export default function Pedidos() {
    let [erro, setErro] = React.useState(false);
    let [sucesso, setSucesso] = React.useState(false);

    function registerOrder(event) {
        event.preventDefault();

        let formData = new FormData(event.target);
        const url = "http://projetos/fullstackeletro/BKEND/registraPedido.php";
        fetch(url, {
            method: "POST",
            body: formData
        })
            .then((response) => response.json())
            .then((dados) => {
                if (dados) {
                    setSucesso(true)
                    setTimeout(
                        () => {
                            setSucesso(false)
                        },
                        3000)
                } else {
                    setErro(true)
                    setTimeout(
                        () => {
                            setErro(false)
                        },
                        3000)

                }
            })

    }
    return (
        <Container >
            <div className="main-container" style={{ paddingBottom: '0', minHeight: '0vh' }}>
                <div className="row my-4">
                    <div className="col-sm-2"></div>
                    <div className="col-sm-8 bg-light border border-dark">
                        <form onSubmit={registerOrder} className="form_pedidos">
                            <h4 className="text-dark ml-3">Dados do pedido</h4>
                            <hr />
                            <div className="form-group">
                                <label for="nomecliente">Nome:</label>
                                <input type="text" name="nomecliente" id="" className="form-control" placeholder="Seu nome" />
                            </div>

                            <div className="form-group">
                                <label for="cpf">CPF:</label>
                                <input type="text" name="cpf" id="" className="form-control" placeholder="Apenas números" />
                            </div>



                            <div className="form-group">
                                <label for="estado">Seu estado:</label>
                                <select className="custom-select" name="estado">
                                    <option value="1">Acre</option>
                                    <option value="2">Alagoas</option>
                                    <option value="3">Amapá</option>
                                    <option value="4">Amazonas</option>
                                    <option value="5">Bahia</option>
                                    <option value="6">Ceará</option>
                                    <option value="7">Distrito Federal</option>
                                    <option value="8">Espírito Santo</option>
                                    <option value="9">Goiás</option>
                                    <option value="10">Maranhão</option>
                                    <option value="11">Mato Grosso</option>
                                    <option value="12">Mato Grosso do Sul</option>
                                    <option value="13">Minas Gerais</option>
                                    <option value="14">Pará</option>
                                    <option value="15">Paraíba</option>
                                    <option value="16">Paraná</option>
                                    <option value="17">Pernambuco</option>
                                    <option value="18">Piauí</option>
                                    <option value="19">Rio de Janeiro</option>
                                    <option value="27">Rio Grande do Norte</option>
                                    <option value="20">Rio Grande do Sul</option>
                                    <option value="21">Rondônia</option>
                                    <option value="22">Roraima</option>
                                    <option value="23">Santa Catarina</option>
                                    <option value="24">São Paulo</option>
                                    <option value="25">Sergipe</option>
                                    <option value="26">Tocantins</option>
                                </select>
                            </div>

                            <div className="form-group">
                                <label for="cidade">Cidade:</label>
                                <input type="text" name="cidade" id="" className="form-control" placeholder="Sua cidade" />
                            </div>
                            <div className="form-group">
                                <label for="bairro">Bairro:</label>
                                <input type="text" name="bairro" id="" className="form-control" placeholder="bairro da entrega" />
                            </div>
                            <div className="form-group">
                                <label for="rua">Endereço da entrega:</label>
                                <input type="text" name="rua" id="" className="form-control" placeholder="Endereço da entrega" />
                            </div>
                            <div className="form-group">
                                <label for="numero">Número de sua casa:</label>
                                <input type="text" name="numero" id="" className="form-control" placeholder="Apenas Números" />
                            </div>
                            <div className="form-group">
                                <label for="telefone">Telefone:</label>
                                <input type="text" name="telefone" id="" className="form-control" placeholder="(ddd) 999999999" />
                            </div>

                            <div className="form-group">
                                <label for="nomeproduto">Produto</label>
                                <input type="text" name="nomeproduto" id="" className="form-control" placeholder="" value={getInfo()[0]} readOnly />
                            </div>
                            <div className="form-group">
                                <label for="valunit">Valor Unitário</label>
                                <input type="number" name="valunit" id="valunit" className="form-control" placeholder="" value={getInfo()[1]} readOnly />
                            </div>

                            <div className="form-group">
                                <label for="qntd">Quantidade</label>
                                <input type="number" name="qntd" id="qntd" className="form-control" placeholder="" onchange="calculoPedido()" />
                            </div>
                            <div className="form-group">
                                <label for="val_total">Valor Total</label>
                                <input type="number" name="val_total" id="val_total" className="form-control" placeholder="" disabled />
                            </div>
                            <input type="text" name="idproduto" value={getInfo()[2]} readOnly />


                            <div className="container justify-content-end align-items-center" style={{ display: 'flex' }}>
                                <button type="submit" className="btn btn-primary btn-lg">Enviar Pedido</button>
                            </div>
                        </form>

                        {
                            sucesso && <div className="alert alert-success" role="alert">
                                Pedido enviado com sucesso.
                          </div>
                        }
                        {
                            erro && <div className="alert alert-danger" role="alert">
                                Algo deu errado, cheque seu pedido.
                          </div>
                        }
                    </div>
                    <div className="col-sm-2"></div>
                </div>
            </div>
        </Container>
    )
}