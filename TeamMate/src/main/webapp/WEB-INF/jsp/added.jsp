<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${list}" var="list">
         <table border="1px" style="width:100%">
         <tr>
           <th>Team Members</th>
           <th>Team Name</th>
           <th>Email</th>
           <th>Role</th>
         <tr>
           <td width="60" align="left">${list.team_member}</td>
           <td width="60" align="left">${list.team_name}</td>
           <td width="60" align="left">${list.email}</td>
           <td width="60" align="left">${list.role}</td>
         </tr>
         </table>
         </c:forEach>
</body>
</html>