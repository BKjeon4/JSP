<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 방명록 </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#submitBtn').click(function(){
		//alert('ok')
		//유효성검사
		var name = $('input[name="guestName"]').val();
		var password = $('input[name="password"]').val();
		var message = $('textarea[name="message"]').val();
		
 		if(name == "" || name == null) {
 			alert('이름 채워라 뒤지기 싫으면')
		}else if (password == "" || password == null) {
			alert('비번도 까뭇다이')
		}else if (message == "" || message == null) {
			alert('메모')
 		}else{$('form[name="frm"]').submit()};
		
// 		$('form[name="frm"]').submit();
		
		
		
		
	});
	
	
	
	
});

</script>
</head>

<body>

	<form action="saveMessage.jsp" name="frm" method="get">
		이름 : <input type="text" name="guestName" required /><br/><br/>
		암호 : <input type="password" name="password" required /><br/><br/>
		메세지 : <textarea name="message" rows="3" cols="30" required></textarea><br/><br/>
		<input id='submitBtn' type="button" value="메세지 남기기">
	</form>
</body>
</html>