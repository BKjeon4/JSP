<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title> 로그인창 </title>
</head>
<body>

<h3>로그인 확인하기 </h3> 
<form action="01_second.jsp" method="get">		<%//post 방식이 아닌 get 방식으로 하면 비밀번호를 입력 했을 때, 페이지 주소값에 나타남 %>
사용자: <input name='User' type='text'><br/>
비밀번호: <input name='Pass' type='password'><br/>
<input type='submit' value='login'> 
</form>

</body>
</html>