import { Switch, Route } from 'react-router-dom';
import Contato from './paginas/contato';
import Produtos from './paginas/produtos';
import Lojas from './paginas/lojas';
import Pedidos from './paginas/pedidos';
import Mostrarpedidos from './paginas/mostrarpedidos';
function Rotas(){
    return (
        <Switch>    
            <Route exact path="/produtos" component={Produtos} />
            <Route exact path="/lojas" component={Lojas} />
            <Route exact path="/contato" component={Contato} />
            <Route exact path="/pedidos" component={Pedidos}/>
            <Route exact path="/mostrarpedidos" component={Mostrarpedidos}/>
        </Switch>
    )
}

export default Rotas;