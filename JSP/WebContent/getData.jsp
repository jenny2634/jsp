<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>

		$.ajax({
			url : "./data.jsp", // ��û �ּ�
			//type : "get",
			success : function(data) { // �������� ��� ������
				/* data = $.parseJSON(data);
				alert(data.result.address); */
				alert(data);
				$("body").html(data);//body �±� ���� html �ڵ� ����
			}
	});
</script>