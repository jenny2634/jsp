<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	String[] hobbies = request.getParameterValues("hobby");//값 두개 받아올수 있으므로 values, string 배열 사용
	String hobby = "";
	String seperator = "";
	for(String h : hobbies) {
		hobby += seperator + h;
		seperator = " ";
	}
%>
<table border="1">
	<tr>
		<td>항목</td>
		<td>내용</td>
	</tr>
	<tr>
		<td>ID</td>
		<td><%=id%></td>
	</tr>
	<tr>
		<td>PW</td>
		<td><%=pw%></td>
	</tr>
	<tr>
		<td>성명</td>
		<td><%=name%></td>
	</tr>
	<tr>
		<td>성별</td>
		<td><%=gender%></td>
	</tr>
	<tr>
		<td>주소</td>
		<td><%=address%></td>
	</tr>
	<tr>
		<td>취미</td>
		<td><%=hobby%></td>
	</tr>
</table>
