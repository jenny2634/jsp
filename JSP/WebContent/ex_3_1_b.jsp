<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	String[] hobbies = request.getParameterValues("hobby");//�� �ΰ� �޾ƿü� �����Ƿ� values, string �迭 ���
	String hobby = "";
	String seperator = "";
	for(String h : hobbies) {
		hobby += seperator + h;
		seperator = " ";
	}
%>
<table border="1">
	<tr>
		<td>�׸�</td>
		<td>����</td>
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
		<td>����</td>
		<td><%=name%></td>
	</tr>
	<tr>
		<td>����</td>
		<td><%=gender%></td>
	</tr>
	<tr>
		<td>�ּ�</td>
		<td><%=address%></td>
	</tr>
	<tr>
		<td>���</td>
		<td><%=hobby%></td>
	</tr>
</table>
