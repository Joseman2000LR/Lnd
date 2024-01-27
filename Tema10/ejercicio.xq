xquery version "1.0";
let  $autores := ('hola','adios','chao') 
return   <a>{count($autores)}</a>