<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>HEMA</title>
<script>
function populate(s1,s2)

{
var s1 = document.getElementById(s1);
var s2 = document.getElementById(s2);
s2.innerHTML = " ";
if(s1.value == "TAMILNADU")
{

var optionArray = ["|","CHENNAI|CHENNAI","COIMBATORE|COIMBATORE","SELAM|SALEM","KANNIYAKUMARI|KANNIYAKUMARI"];
} 
else if(s1.value == "KARNATAKA") 
{
var optionArray = ["|","BANGALORE|BANGALORE","MYSORE|MYSORE","VIJAYAPURA|VIJAYAPURA","GADAG|GADAG"];
} 
else if(s1.value == "MAGALAIYA") 
{
var optionArray = ["|","SHILOG|SHILOG","RI-BHOI|RI-BHOI","BAGHMARA|BAGHMARA","GARO-HILLS|GARO-HILLS"];
} 
else if(s1.value == "UTTARKAND") 
{
var optionArray = ["|","RISHIKESH|RISHIKESH","DEHRADUN|DEHRADUN","ALMORA|ALMORA","TEHRI|TEHRI"];
} 
else if(s1.value == "GOA") 
{
var optionArray = ["|","SURANDRANAGAR|SURANDRANAGAR","BJHANAGAR|BJHANAGAR","AMRELI|AMRELI","BHARUNCH|BHARUNCH"];
}
for(var option in optionArray)
{
var pair = optionArray[option].split("|");
var newOption = document.createElement("option");
newOption.value = pair[0];
newOption.innerHTML = pair[1];
s2.options.add(newOption);
}
}
</script>
</head>
<body><center>
<h2>STATE WITH DISTRICT</h2>
<hr/>
Choose STATE:
<select id="slct1" name="slct1" onchange="populate(this.id,'slct2')">
  <option value=""></option>
  <option value="TAMILNADU">TAMILNADU</option>
  <option value="KARNATAKA">KARNATAKA</option>
  <option value="MAGALAIYA">MAGALAIYA</option>
  <option value="UTTARKAND">UTTARKAND</option>
  <option value="GOA">GOA</option>
</select>
<hr/>
Choose DISTRICT:
<select id="slct2" name="slct2"></select>
<hr/>
</center>
</body>
</html>


