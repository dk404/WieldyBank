function cal()
{
var x=document.getElementById("Loan").value;
var y=0.0865;
var z=document.getElementById("tenor").value;
var interest=(x*(y*0.1))/z;
var emi=((x/z)+interest).toFixed(2);
emi=emi.toString().replace(/\B(?=(\d{3})+(?!\d))/g,",");
document.getElementById("emi").innerHTML="Monthly payment:"+emi;


}