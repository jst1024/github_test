<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<%
	String sid = (String) session.getAttribute("sid");
	if(sid!=null){
		session.invalidate();
	}
	response.sendRedirect("test10.jsp");
%>
</body>
</html>