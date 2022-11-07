<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 	
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String [] animal = request.getParameterValues("animal");
	String chooseAnimal = "";
	for (int i=0; animal!=null && i<animal.length; i++){	//short circuit 으로 인해, null 값이면 그 뒤의 식이 발생 하지 않음
		chooseAnimal += animal[i];
	}
%>
    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_result.jsp</title>
</head>
<body>

<!-- 이전 화면에서 사용자 입력값을 얻어와서 
		- request.getParameter("")	한개 일 때
		- request.getParameterValues("")	여러개 일 때
	화면 출력 -->

<%= name + chooseAnimal %>
	


</body>
</html>