xquery version "1.0";
<repetidores>
{
for $variable in doc("alumnos.xml") /instituto/curso/alumno 
where $variable/repetidor = "true"
order by $variable/apellidos
return $variable/apellidos
}
</repetidores>
