xquery version "1.0";
<repetidores>
{
for $variable in doc("alumnos.xml") /instituto/curso/alumno 
let $num :=$variable/nombre
where $variable/[asignaturas <4]
order by $variable/nombre
return $num
}
</repetidores>
