<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>

	<input type = button onClick="parent.location='/TeamMate/createteam'" value='Create Team' name="Create Team"> 
	<input type = button onClick="parent.location='/TeamMate/existing'" value='Existing Team' name="Existing Team"> 
	<p>${usermodel.fname}</p>
</body>
</html>