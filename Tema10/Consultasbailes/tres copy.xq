xquery version "1.0";
<html>
    <head><title>consulta paginas Web</title></head>
    <body>
    <table border="2">
    <tr>
        <td>nombre baile</td>
        <td>precio</td>
    </tr>
    {
        for $baile in doc("bailes.xml")//bailes/baile
        where $baile/number(precio)>20
        return 
        <tr>
          <td>{$baile/nombre/text()}</td>
          <td>{$baile/precio/text()}</td>
         </tr>
    }
    
    </table>
    </body>
</html>
