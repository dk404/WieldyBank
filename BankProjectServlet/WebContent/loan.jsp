<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan</title>
<frameset rows="43%,*">
<frame src="right.html">
<frameset cols="33%,33%,33%">
<frame  src="home.html" target="homeloan.jsp">
 
<frame src="education.html">	
<frame  src="personal.html">
 <frame src = " ">
</frameset>
</frameset>
</head>
<body>
</body>
<iframe src="home.html" id="iframe"></iframe>

<script>
  iframe.onload = function() {
    // we can get the reference to the inner window
    let iframeWindow = iframe.contentWindow;

    try {
      // ...but not to the document inside it
      let doc = iframe.contentDocument;
    } catch(e) {
      alert(e); // Security Error (another origin)
    }

    // also we can't read the URL of the page in it
    try {
      alert(iframe.contentWindow.location);
    } catch(e) {
      alert(e); // Security Error
    }

    // ...but we can change it (and thus load something else into the iframe)!
    iframe.contentWindow.location = '/'; // works

    iframe.onload = null; // clear the handler, to run this code only once
  };
</script>



</html>
