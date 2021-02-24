import { Navbar, Nav} from 'react-bootstrap';
// import { Link, WhithRouter} from 'react-router-dom';
import './Menu.css';

export default function Menu(){
    return(
        <div className="App">
            <Navbar className="navbar-dark" bg="danger" expand="lg" fixed="top">
                <Navbar.Brand>
                   <a class="navbar-brand" href="/" to="/"><img src={require(`./img/logo_full_stack_eletro.jpeg`).default} style={{width:"90px", height: "60px;"}}/></a>
                </Navbar.Brand>
                <Navbar.Toggle aria-controls="menu"/>
                    <Navbar.Collapse id="menu">
                        <Nav class="navbar navbar-expand-lg navbar-light mr-auto mr-6">
                            <div class="navbar-nav">
                                <a class="navbar-brand " href="/" to="/">Home</a> 
                                <a class="navbar-brand " href="/produtos" to="/produtos">Produtos </a>
                                <a class="navbar-brand " href="/lojas" to="/lojas">Lojas</a>
                                <a class="navbar-brand " href="/contato" to="/contato">Contato</a>
                                <a class="navbar-brand " href="/mostrarpedidos" to="/mostrarpedidos">Pedidos</a>
                            </div>                            
                        </Nav>
                </Navbar.Collapse>
            </Navbar>
        </div>
    );
}