<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 회원가입  </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#sign').attr("disabled", "disabled");
	
	$('.dupCheck').click(function(){
		$.ajax({
			type	: 'get',
			url		: 'SelectedId.jsp',
			data	: {id : $('input[name="id"]').val()},		//보내는 데이터 객체화
			dataType: 'text',					//xtm, html
			success	: function(data){
				if(data.trim()=="-1") {
					$('#result').text("아이디를 입력해주세요.");
					$('#sign').attr("disabled", "disabled");
				}else if(data.trim()== "1") {					
					$('#result').text("사용하실 수 없는 아이디 입니다.");
					$('#sign').attr("disabled", "disabled");
				}else if(data.trim()=="0"){
					$('#result').text("사용 가능한 아이디 입니다.");
					$('#sign').removeAttr("disabled");
				}
			}
		})
			
	})
})


</script>
</head>
<body>

<h1>회원가입서 작성하기</h1>
 
	<form action="InsertMember.jsp" method="post" name="frm">
		<table>
			<tr>
				<td width="100">
				<font color="blue">아이디</font>
				</td>
				<td width="100">
				<input type="text" name="id">
				<input type="button" class="dupCheck" value="중복확인">
				<div id='result'>여기</div>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">비밀번호</font>
				</td>
				<td width="100">
				<input type="password" name="password"/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">비밀번호학인</font>
				</td>
				<td width="100">
				<input type="password" name="repassword"/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">이름</font>
				</td>
				<td width="100">
				<input type="text" name="name"/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">전화번호</font>
				</td>
				<td>
				<input type="text" size="15" name="tel"/>
				<br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">주소</font>
				</td>
				<td>
				<input type="text" size="50" name="addr"/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				 <!--로그인 버튼-->
				 <input type="submit" id="sign" value="회원가입" name="sign">
				</td>
				<td width="100">
				<input type="reset" name="cancel" value="취소"><br/>
				</td>
			</tr>
		</table>
	</form>



 </body>
</html>
    