
<html>
    <head><title>consulta paginas Web</title></head>
    <body>
    {
      
      for $cliente in doc ("neptuno.xml")//neptuno/clientes
      where $cliente/CiudadCliente = "París"
      return 
        <li>
        <ol>{$cliente/RefCliente}</ol>
        <ol>{$cliente/NombreCliente}</ol>
        </li>
        
      
      }
    </body>
</html>