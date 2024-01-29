xquery version "1.0";
for $baile in doc("bailes.xml")//bailes/baile
where $baile/number(precio)>20
return 
<baile>
<nombre>{$baile/nombre/text()}</nombre>
<precio>{$baile/precio/text()}</precio>
</baile>