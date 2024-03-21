<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="joinpro.jsp" method="post">
	<p> 아이디 : <input type="text" name="id" id="id" placeholder="아이디 입력" autofocus="autofocus">&nbsp;&nbsp;<button type="button">아이디 중복확인</button><br>
	<p> 이름 : <input type="text" name="name" id="name" placeholder="이름 입력"><br>
	<p> 비밀번호 : <input type="password" name="pw" id="pw" placeholder="비밀번호 입력"><br>
	<p> 연락처 : 010-<input type="text" name="phone1" id="phone1">-<input type="text" name="phone2" id="phone2"><br>
	<p> 성별 : <input type="radio" name="sex" id="sex" value="1" checked>남성
			<input type="radio" name="sex" id="sex" value="2">여성<br>		
	<p> 이메일 : <input type="email" name="email1" id="email1">@<select name="email2" size="">
				<option value="naver">naver.com</option>
				<option value="gmail">gmail.com</option>
				<option value="daum">daum.net</option>
				<option value="kakao">kakao.com</option>
				<option value="nate">nate.com</option>
				</select> <br><br>
				<button type="submit">회원가입</button>&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="reset">취소</button>
				
	</form>
</body>
</html>