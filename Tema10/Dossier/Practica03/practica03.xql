declare variable $xml :=
<instituto codigo="38010700" nombre="IES Domingo Pérez Minik">
   
</instituto>;

declare variable $alumnos :=
    for $curso in $xml//curso,
        $alumno in $curso/alumno
    return
        <alumno id="{$alumno/@cial}" curso="{$curso/@nombre}">
            { $alumno/nombre }
        </alumno>;

let $numAlumnos := count($alumnos)

return
<html>
    <head>
        <title>Lista</title>
    </head>
    <body>
        <h3>Hay {$numAlumnos} alumnos</h3>
        <ol type="1">
            {
                for $alumno in $alumnos
                return
                    <li id="{$alumno/@id}">{$alumno/nombre} del curso {$alumno/@curso}</li>
            }
        </ol>
    </body>
</html>