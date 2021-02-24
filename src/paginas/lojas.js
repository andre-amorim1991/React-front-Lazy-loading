import {Container, Card} from 'react-bootstrap';
export default function Lojas(){
    return (
        <Container fluid class="flex-container  container-sm p-2 m-2 ">
            <div class="container text-center">
                <div class="row">
                    <div class="col-sm">
                        <div class="card">
                            <div class="card-body bg-danger">
                                <h3 class="card-title">Rio de Janeiro</h3> 
                                <p class="card-text">Avenida Copa Cabana, 3456<br/>Copa cabana<br/>(21) 2132-6532</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="card">
                            <div class="card-body bg-danger">
                                <h3 class="card-title">Belo Horizonte</h3>
                                <p class="card-text">Avenida João Pina, 520<br/>Assunção<br/>(31) 4232-3698</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm">
                        <div class="card">
                            <div class="card-body bg-danger">
                                <h3 class="card-title">São Paulo</h3> 
                                <p class="card-text">Avenida Paulista, 3912<br/>Bela Vista<br/>(11) 3265-6532</p>
                            </div>                        
                        </div>
                    </div>
                </div>
            </div>
        </Container>
    );
}