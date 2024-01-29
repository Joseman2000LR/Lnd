xquery version "1.0";
<html>
    <head><title>consulta paginas Web</title></head>
    <body>
    <table border="2">
    <tr>
        <td>NombreProveedor</td>
        <td>PaisProveedor</td>
    </tr>
    {
        for $proc in doc("neptuno.xml")//proveedores
        return  
        <tr><td>{$proc/NombreProveedor}</td>
        <td>{$proc/NombreProveedor}</td></tr>
      }
    
    </table>
    </body>
</html>
