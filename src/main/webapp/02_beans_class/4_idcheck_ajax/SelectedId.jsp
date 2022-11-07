<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="member.beans.MemberDao"  %>

<% 
	String id = request.getParameter("id");

	if( id=="" || id ==null) {
		out.print("-1");
		return;
	}

	MemberDao dao = MemberDao.getInstance();	//객체 생성 (드라이버연결)
	boolean result =dao.isDuplicatedId(id);
	
	if(result) {
		out.print("1");
	}else{
		out.print("0");
	}

%>
