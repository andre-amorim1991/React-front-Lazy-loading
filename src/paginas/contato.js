import {Container} from 'react-bootstrap';
import {Card} from 'react-bootstrap';
import './paginas.css';

export default function Contato(){
    return (
        <Container fluid>
            <div class="container-sm">
                <table class="table">
                    <tr>
                        <td class="email">
                            <img class="logos" src={require('./img/logo-email.png').default} alt="E-mail"/>
                            <p>sac.fullstackeletro@fullstackeletro.com.br</p>
                        </td>

                        <td class="whatsapp">
                            <img class="logos" src={require('../paginas/img/whatsapp-logo.png').default} alt="contato"/>
                            <p>(11) 98765-4321</p>
                        </td>
                    </tr>
                </table>
                <form method="post" action="">
                <div class="form-group">
                    <h4>Nome: </h4>
                    <input class="input-group" type="text" name="nome"  placeholder="Digite aqui seu nome"/>
                    <br/>
                    <h4>Mensagem: </h4>
                    <br/>
                    <textarea class="input-group"  name="msg"  placeholder="Digite aqui sua mensagem"></textarea>
                    <br/>
                    <button class="btn btn-danger" type="submit" name="submit">Enviar</button>
                </div>
                </form>
            </div>

        </Container>
    );
}

