<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="./js/jquery.cookie.js"></script>
<script>
	$(document).ready(function() {
		// ��ȸ
		var cookieValue = $.cookie("id");
		console.log(cookieValue);

		// �Է�
		$.cookie("test", "ABCD");
		// 		$.cookie("open", "false", {
		// 			expires : 2
		//		}); // �������� 2�� ��
		//shift+ctrl +c �ּ�
		var value = $.cookie("open");
		//null�Ǵ� undefined�� �ƴ� ��->true
		if (value == null) {
			//����, �̸� �ɼ� (â�� �ʺ�, ����)
			open('http://naver.com', '', 'width=50 height=50');
		}
	});
</script>