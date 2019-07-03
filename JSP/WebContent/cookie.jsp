<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="./js/jquery.cookie.js"></script>
<script>
	$(document).ready(function() {
		// 조회
		var cookieValue = $.cookie("id");
		console.log(cookieValue);

		// 입력
		$.cookie("test", "ABCD");
		// 		$.cookie("open", "false", {
		// 			expires : 2
		//		}); // 만료일자 2일 뒤
		//shift+ctrl +c 주석
		var value = $.cookie("open");
		//null또는 undefined가 아닌 값->true
		if (value == null) {
			//내용, 이름 옵션 (창의 너비, 높이)
			open('http://naver.com', '', 'width=50 height=50');
		}
	});
</script>