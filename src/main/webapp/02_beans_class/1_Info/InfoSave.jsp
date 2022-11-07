<%@ page contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<%
/*	InfoBean bean = new InfoBean();

	String name = request.getParameter("name");
	bean.setName(name);

	String id = request.getParameter("id");
	bean.setId(id);
*/
%>
<%//한글처리 %>
<jsp:useBean id="bean" class="info.InfoBean" sc>
	<jsp:setProperty name="bean" property="*"/>	
</jsp:useBean>


<!DOCTYPE html>
<html>
<body>
	<h2>  당신의 신상명세서 확인 </h2>
	이   름  : <%= bean.getName() %><br/>
	주민번호 : <%= bean.getId() %><br/>
	성  별   : <%= bean.getGender() %><br/>  
	맞습니까????
</body>
</html>