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
           <th>project_manager_fname</th>
           <th>project_manager_lname</th>
           <th>project_team_name</th>
           <th>Apply</th>
         <tr>
           <td width="60" align="center">${list.project_manager_fname}</td>
           <td width="60" align="center">${list.project_manager_lname}</td>
           <td width="60" align="center">${list.project_team_name}</td>
           <td width="60" align="center"><a href="/TeamMate/jointeam/${list.project_team_name}">join team</a></td>
         </tr>
         </table>
         </c:forEach>
</body>
</html>