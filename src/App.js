import {lazy, Suspense} from "react";

import { BrowserRouter } from 'react-router-dom';
import { Container } from 'react-bootstrap';
// import Rotas from './rotas';
import './App.css';
// import Menu from './Componentes/Menu';
// import Rodape from './Componentes/Rodape/rodape';

const Menu = lazy(() => import('./Componentes/Menu'));
const Rotas = lazy(() => import('./rotas'));
const Rodape = lazy(() => import('./Componentes/Rodape/rodape')); 

function App() {
  return (
    <BrowserRouter>
      <div className="App">
        <header>
          <Suspense fallback={<p>Carregando...</p>}>
            <Menu/>
          </Suspense>
         
        </header>
        <main>
          <h1>Bem Vindo(a) a Full Stack Eletro </h1>
          <h2>Aqui desenvolvedores tem 10% de Desconto em eletronônicos para sua casa!</h2>
          <Suspense fallback={<p>Carregando conteudo</p>}>
            <Container fluid>
              <Rotas/>
            </Container>
          </Suspense>
                    
        </main>
        <footer class="rodape">
          <Suspense fallback={<p>Carregando...</p>}>
            <Rodape/>
          </Suspense>            
        </footer>
      </div>
    </BrowserRouter>
  );
}

export default App;
