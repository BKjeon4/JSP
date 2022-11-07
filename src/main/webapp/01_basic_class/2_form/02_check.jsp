<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 1) 이 전 화면에서 사용자 입력값들을 얻어오기
	// - request.getParameter('')	하나씩 얻어오기
	// - request.getParameterValues('')	여러개 얻어오기
	
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String job = request.getParameter("occupation");
	String[] hobby = request.getParameterValues("hobby");
	
	
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 2) 얻어온 입력값들을 화면에 출력하기 -->
	입력한 이름 : <%= name %> <br/>
	선택한 성별 : <%= gender %> <br/>
	선택한 직업 : <%= job %> <br/>
	선택한 취미 : <% for(int i=0; i < hobby.length; i++){ %>
		 		<%= hobby[i] %>
				<% } %>
				
				<% // for(String h : hobby) %>
				<% // h %>
				
				<%/* if(hobby == null) {
         			out.print("--");
       				}else {
         			for(String s : hobby) out.print(s+"/");
       				} */%>
       				
       			<%//  for(String s: hobby) out.print(s+" "); 한줄짜리 %> 


</body>
</html>