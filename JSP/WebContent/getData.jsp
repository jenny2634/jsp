<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>

		$.ajax({
			url : "./data.jsp", // 요청 주소
			//type : "get",
			success : function(data) { // 서버와의 통신 성공시
				/* data = $.parseJSON(data);
				alert(data.result.address); */
				alert(data);
				$("body").html(data);//body 태그 내에 html 코드 삽입
			}
	});
</script>