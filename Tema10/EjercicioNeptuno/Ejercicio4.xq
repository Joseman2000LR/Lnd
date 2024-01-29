xquery version "1.0";
<html>
    <head><title>consulta paginas Web</title></head>
    <body>
    <table>
    <tr><td>RefArticulo</td> <td>NombreArticulo </td>
    <td>RefProveedor </td><td>NombreProvedor </td>
    </tr>
    {
      
      for $articulo  in doc ("neptuno.xml")//articulos
      for $proveedor  in doc ("neptuno.xml")//proveedores
      where  $articulo/NombreCategoria ="alimentación" and $articulo/ReferenciaProveedor=$proveedor/ReferenciaProveedor
      
        return 
         <tr>
         <td>{data($articulo/ReferenciaProveedor)}</td>
         <td>{data($articulo/./NombreArticulo)}</td>
        <td>{data($proveedor)}</td>
        <td>{data($proveedor/./NombreProveedor)}</td></tr>
    }
    </table>
    </body>
</html>


