<html>
<head>
 <title>miniFB</title>
</head>

<body>

<h2> welcome

<%
	out.print(request.getAttribute("name"));	
%>  
you have successfully logged in </h2>

<h3> Details </h3>
<!-- displaying all details inside -->
<%
	
	out.println("<p>birthday  " + (String)request.getAttribute("bday") + "</p>");

	Integer sex = (Integer)request.getAttribute("sex");
	if(sex == 1){
		out.println("<p>boy here</p>");
	}

	else{
		out.println("<p>girl here</p>");
	}


	out.println("<p>education  " + (String) request.getAttribute("edu") + "</p>");

	out.println("<p>location  " + (String) request.getAttribute("loc") + "</p>");

	out.println("<p>email id  " + (String) request.getAttribute("email") + "</p>");

	out.print("</p>interested in  ");

	if((Integer)request.getAttribute("in_in") == 1){
		out.println("boys</p>");
	}

	else{
		out.println("girls</p>");
	}



%>


<p> testing for other profiles </p>
<a href="visit?visitid=1"> rohith </a>


</body>
</html>