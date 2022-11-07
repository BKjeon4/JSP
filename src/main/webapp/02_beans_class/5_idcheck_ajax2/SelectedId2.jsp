<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import= "member.beans.MemberDao" %>

<%
	String id = request.getParameter("id");

	MemberDao dao = MemberDao.getInstance();			//객체생성, single ton
	boolean check = dao.isDuplicatedId(id);
	//out.print(check);
	
	if(check == true) {
		out.print("1");
	}else{ out.print("0");}
%>