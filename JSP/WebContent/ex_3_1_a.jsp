<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<form action="./ex_3_1_b.jsp" method="post">
	ID :
	<input type="text" name="id">
	<br>
	PW :
	<input type="text" name="pw">
	<br>
	����:
	<input type="text" name="name">
	<br>
	����:
	<input type="radio" name="gender" value="����">
	����
	<input type="radio" name="gender" value="����">
	����
	<br>
	�ּ�:
	<select name = "address">
	<option>seoul</option>
	<option>daejeon</option>
	<option>busan</option>
</select>
	
	��� :
	<input type="checkbox" name="hobby" value="java"> JAVA
	<input type="checkbox" name="hobby" value="jsp"> JSP
	<br>
	<input type="submit" value="����">
</form>

<%
	String add = "busan";
%>
