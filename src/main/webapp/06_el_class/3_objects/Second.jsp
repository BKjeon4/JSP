<%@ page contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> 데이타 받는 페이지 </title>
</head>
<body>
<!-- String param = request.getParameter("data"); -->
파라메터 값(전 페이지에서 넘어오는 값) : ${param.data} <br/> 

세션의 값 : ${sessionScope.login}<br/> <!-- *********기존의 session 이름과 겹치기 때문에, sessionScope로 써줘야함************ -->

쿠키의 값 : ${cookie.isFlag.value } <br/> <!-- *********쿠기의 값은 밸류까지 해서 가지고 와야 함************* -->


<hr>


</body>
</html>