xquery version "1.0";
<<<<<<< Updated upstream
declare variable $num as xs:integer := 4;
<instituto codigo="38010700" nombre="IES Domingo Pérez Minik">

{ 
    for $curso in //curso
    return
        <curso codigo="{$curso/@codigo}" nombre="{$curso/@nombre}">
            {
                for $alumno in $curso/alumno[count(notas/asignatura) lt $num]
                return
                <alumno cial="{$alumno/@cial}">
                    { $alumno/nombre, $alumno/apellidos, $alumno/repetidor, $alumno/notas }
                </alumno>
            }
        </curso>
=======
<repetidores>
{
  for $variable in doc("alumnos.xml")/instituto/curso/alumno 
  let $num := $variable/nombre
  where $variable/asignaturas < 4
  order by $variable/nombre
  return $num
>>>>>>> Stashed changes
}
</instituto>
