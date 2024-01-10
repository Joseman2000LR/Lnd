xquery version "1.0";
<repetidores>
{
for $variable in /instituto/curso/alumno
where $variable/repetidor = "true"
order by $variable/apellidos
return $variable/apellidos
}
</repetidores>
