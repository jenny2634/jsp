<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<form method="post" action="join.jsp">
	ID :
	<input type="text" name="id">
	<button type="button" onclick="run()">�ߺ��˻�</button>
	<br>
	PW :
	<input type="text" name="pw">
	<br>
	�̸� :
	<input type="text" name="name">
	<br>
	<input type="submit" value="�����ϱ�">
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
			url : "./idCheck.jsp?user_id=" + user_id, // ��û �ּ�
			//type : "get",
			success : function(data) { // �������� ��� ������
				data = JSON.parse(data);//json ���ڿ��� json���� ��ȯ
				alert(data.msg);
			if(data.result == true){
				isPossible = true;
			}
				/* alert(data);
				if($.trim(data) == "���� ����"){
					isPossible = true;
				} */
				/* data = $.parseJSON(data);
				alert(data.result.address); */
				//alert(data);
				//$("body").html(data);//body �±� ���� html �ڵ� ����
			}
		});
	}
</script>