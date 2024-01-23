xquery version "1.0";
let $num := 4

let $alumnos := doc("alumnos.xml")//alumno[asignatura/count(asignatura) < $num]

return
  <alumnos>
    {$alumnos}
  </alumnos>