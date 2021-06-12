<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Team</title>
</head>
<body>
<form:form action="create" method="post" modelAttribute="createteammodel">
 Project Name : 
<form:input path="project_team_name"/><br>

Position Recruitment : 1
<form:select path="required_position">
<form:option value=""></form:option>
<form:option value="Project Assistant"></form:option>
<form:option value="Web Developer"></form:option>
<form:option value="Database Security Manager"></form:option>
<form:option value="Data Analysit"></form:option>
<form:option value="Code Tester"></form:option>
<form:option value="Communicator"></form:option>
</form:select>  

Number of Recruitments : 
<form:input path="number"/><br><br>

Position Recruitment : 2
<form:select path="required_position2">
<form:option value=""></form:option>
<form:option value="Project Assistant"></form:option>
<form:option value="Web Developer"></form:option>
<form:option value="Database Security Manager"></form:option>
<form:option value="Data Analysit"></form:option>
<form:option value="Code Tester"></form:option>
<form:option value="Communicator"></form:option>
</form:select>

Number of Recruitments : 
<form:input path="number2"/><br><br>

Position Recruitment : 3
<form:select path="required_position3">
<form:option value=""></form:option>
<form:option value="Project Assistant"></form:option>
<form:option value="Web Developer"></form:option>
<form:option value="Database Security Manager"></form:option>
<form:option value="Data Analysit"></form:option>
<form:option value="Code Tester"></form:option>
<form:option value="Communicator"></form:option>
</form:select>
Number of Recruitments : 
<form:input path="number3"/><br><br>

Position Recruitment : 4
<form:select path="required_position4">
<form:option value=""></form:option>
<form:option value="Project Assistant"></form:option>
<form:option value="Web Developer"></form:option>
<form:option value="Database Security Manager"></form:option>
<form:option value="Data Analysit"></form:option>
<form:option value="Code Tester"></form:option>
<form:option value="Communicator"></form:option>
</form:select>

Number of Recruitments : 
<form:input path="number4"/><br><br>

Position Recruitment : 5
<form:select path="required_position5">
<form:option value=""></form:option>
<form:option value="Project Assistant"></form:option>
<form:option value="Web Developer"></form:option>
<form:option value="Database Security Manager"></form:option>
<form:option value="Data Analysit"></form:option>
<form:option value="Code Tester"></form:option>
<form:option value="Communicator"></form:option>
</form:select>

Number of Recruitments : 
<form:input path="number5"/><br><br>

<form:button>SUBMIT</form:button>
</form:form>
</body>
</html>