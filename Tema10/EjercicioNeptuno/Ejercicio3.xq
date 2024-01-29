xquery version "1.0";
for $cliente in doc ("neptuno.xml")//neptuno/clientes
where $cliente/CiudadCliente = "París"
return 
<resultado>
<li>$cliente/RefCliente</li>
<li>$cliente/NombreCliente</li>

</resultado>