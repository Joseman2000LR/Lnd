xquery version "1.0";
for $baile in doc("bailes.xml")/bailes/baile
where contains($baile, 'a')
return $baile

