<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<html>
<body>
<h1>Register Page</h1>

<form:form action="register"  method="post" modelAttribute="usermodel">

 First Name : 
<form:input path="fname"/><br>
 Last Name : 
<form:input path="lname"/><br>
 Age : 
<form:input path="age"/><br>
 Email : 
<form:input path="email"/><br>
 Password : 
<form:password path="password"/><br>
Working Position : 
<form:select path="user_position">
<form:option value="Project Assistant"></form:option>
<form:option value="Web Developer"></form:option>
<form:option value="Database Security Manager"></form:option>
<form:option value="Data Analysit"></form:option>
<form:option value="Code Tester"></form:option>
<form:option value="Communicator"></form:option>
</form:select>
<form:button>Submit</form:button>
</form:form>
</body>
</html>
