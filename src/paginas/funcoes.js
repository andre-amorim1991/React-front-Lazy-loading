export default function Func(){
    return(
        function exibirCategoria (categoria){
   
    let elementos = document.getElementsByClassName('produtos');
    console.log(elementos);
    for(var i=0; i<elementos.length; i++){
        console.log(elementos[1].id);
        if(categoria == elementos[i].id)
             elementos[i].style = "display:inline-block";
         else 
             elementos[i].style = "display:none";
     }
 }
 )
}
// export default function Exibir(){
//     return(
//         let exibirTodos = () => {
//      let elementos = document.getElementsByClassName('produtos');
    
//     for(var i=0; i<elementos.length; i++){
//          elementos[i].style = "display:inline-block";
//      }
 
//  }
//  )
// }
// export default function dest(){
//     const destaque =  
//     return(
//         let destaque = (imagem) => {
//      console.log(imagem);
//      if(imagem.width == 240)
//          imagem.width = 120;
//      else
//          imagem.width = 240;
 
//  }
//     )
// }
 
    
 
    
