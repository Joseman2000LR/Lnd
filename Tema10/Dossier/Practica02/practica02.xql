xquery version "1.0";
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
}
</instituto>
