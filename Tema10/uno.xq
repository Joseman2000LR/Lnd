xquery version "1.0";
for $baile in doc("bailes.xml")//bailes/baile/nombre/text()

return
  $baile