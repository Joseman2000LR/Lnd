xquery version "1.0";
for $baile in doc("bailes.xml")//bailes/baile
order by $baile/nombre
return 
<baile>
<nombre>{$baile/nombre/text()}</nombre>
<precio>{$baile/precio/text()}</precio>
<comienzo>{$baile/comienzo/text()}</comienzo>
<fin>{$baile/fin/text()}</fin>
<profesor>{$baile/comienzo/text()}</profesor>
<sala>{$baile/sala/text()}</sala>
<plaza>{$baile/plaza/text()}</plaza>
</baile>