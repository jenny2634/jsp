<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<form action="./ex_3_1_b.jsp" method="post">
	ID :
	<input type="text" name="id">
	<br>
	PW :
	<input type="text" name="pw">
	<br>
	성명:
	<input type="text" name="name">
	<br>
	성별:
	<input type="radio" name="gender" value="남자">
	남자
	<input type="radio" name="gender" value="여자">
	여자
	<br>
	주소:
	<select name = "address">
	<option>seoul</option>
	<option>daejeon</option>
	<option>busan</option>
</select>
	
	취미 :
	<input type="checkbox" name="hobby" value="java"> JAVA
	<input type="checkbox" name="hobby" value="jsp"> JSP
	<br>
	<input type="submit" value="가입">
</form>

<%
	String add = "busan";
%>
