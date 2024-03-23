<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String title = "표현식과 표현언어";
	String[] arrStr = {"까다로움", "꾸준함", "웃김", "착함"};
	Map<String, String> map = new HashMap<>();
	map.put("name", "조대신");
	map.put("age", "69");
	map.put("nick", "조교주");
	
	request.setAttribute("tt", title);
	request.setAttribute("jg", arrStr);
	request.setAttribute("ch", map);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어(Expression Language)</title>
</head>
<body>
<h2>표현식(Expression)</h2>
<p><%=title  %> : <%=request.getAttribute("tt") %> </p>
<div>
<%
	String[] jwo = (String[])request.getAttribute("jg");
	for(int i=0;i<jwo.length;i++){
%>
	<%=jwo[i] %>
<%
	}
%>
</div><br>
<div>
<%
	Map<String, String> cht = new HashMap<String, String>();
	cht = (HashMap<String, String>) request.getAttribute("ch");
	Collection<String> val = cht.values();
	for(String v:val){
%>
	<span><%=v %></span>
<%
	}
%>
</div>
<br>
<h2>표현언어(Expression Language)</h2>
<p>${tt }</p>
<div>
<c:forEach var="s" items="${jg }">
	<span>${s }</span>	
</c:forEach>
</div><br>
<div>
<c:forEach var="mp" items="${ch }">
	<span>${mp.key }</span>:<span>${mp.value }</span>
</c:forEach>
</div>
</body>
</html>