<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<form method="post" action="join.jsp">
	ID :
	<input type="text" name="id">
	<button type="button" onclick="run()">중복검사</button>
	<br>
	PW :
	<input type="text" name="pw">
	<br>
	이름 :
	<input type="text" name="name">
	<br>
	<input type="submit" value="가입하기">
</form>

<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
	var isPossible = false;
	$("[type=submit]").click(function() {
		if (isPossible == true) {
			return true;
		} else {
			return false;
		}

		//return false;
		e.preventDefault();
	});
	function run() {
		var user_id = document.querySelector("[name=id]").value;
		
		$.ajax({
			url : "./idCheck.jsp?user_id=" + user_id, // 요청 주소
			//type : "get",
			success : function(data) { // 서버와의 통신 성공시
				data = JSON.parse(data);//json 문자열을 json으로 변환
				alert(data.msg);
			if(data.result == true){
				isPossible = true;
			}
				/* alert(data);
				if($.trim(data) == "가입 가능"){
					isPossible = true;
				} */
				/* data = $.parseJSON(data);
				alert(data.result.address); */
				//alert(data);
				//$("body").html(data);//body 태그 내에 html 코드 삽입
			}
		});
	}
</script>