import './rodape.css';
export default function Rodape(){
    return(
        <div className="footer">
            <img src={require(`./img/pagamentos.png`).default}/><br/>
            <p>&copy; Recode Pro 2020<br/>
             Desenvolvido por André Amorim</p>
        </div>
        
    );
}
