xquery version "1.0";
      for $proc in doc("neptuno.xml")//proveedores
      return <li>{$proc/*}</li>
      