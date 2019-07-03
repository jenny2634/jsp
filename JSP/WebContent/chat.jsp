<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div id="messageWindow"></div>
<br>
<input id="inputMessage" type="text">
<input type="submit" value="send" onclick="send()">

<script src='http://code.jquery.com/jquery-3.1.1.min.js'></script>
<script>
	var nickname = prompt('����� �г����� �Է����ּ���.');

	var webSocket = new WebSocket('ws://' + window.location.host + '/chat');

	webSocket.onerror = function(event) {
		onError(event)
	};
	function onError(event) {
		alert(event.data);
	}

	webSocket.onopen = function(event) {
		onOpen(event)
	};
	function onOpen(event) {
		$("#messageWindow").html("<p class='chat_content'>ä�ÿ� �����Ͽ����ϴ�.</p>");
	}

	webSocket.onmessage = function(event) {
		onMessage(event)
	};
	function onMessage(event) {
		var data = $.parseJSON(event.data);
		$("#messageWindow").append(data.msg + "<br>");
	}

	function send() {
		var inputMessage = $("#inputMessage").val();
		webSocket.send('[' + nickname + '] : ' + inputMessage);
		$("#inputMessage").val("");
	}
</script>