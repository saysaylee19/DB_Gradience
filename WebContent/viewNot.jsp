<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="bootstrap.css" rel="stylesheet">
<link href="tabs.css" rel="stylesheet">
<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
</head>
<body>
	NOTIFICATIONS DETAILS DIV
	<center>
		<div id="vwHW">
			<table border="2" align="center">
					<c:forEach items="${NotDetails}" var="columns">
						<tr>
							
								<td><a href="<%=request.getContextPath()%>/delNotifications?nid=${columns.key}"><c:out value="${columns.value}" /></a></td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<% if(session.getAttribute("role").toString().equalsIgnoreCase("students")){ %>
		<a href="<%=request.getContextPath()%>/selectCourse?mess=">Back</a>
			<% } else{%>
		<a href="<%=request.getContextPath()%>/profhome.jsp?message=a">Back</a>

		<% } %>
		
		
</body>
</html>