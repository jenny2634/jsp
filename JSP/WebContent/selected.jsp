<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String grade = "4";
%>
<select>
	<option value="">== ���� ==</option>
	<option value="1" <%if (grade.equals("1"))
				out.print("selected");%>>1�г�
	</option>
	<option value="2" <%if (grade.equals("2"))
				out.print("selected");%>>2�г�
	</option>
	<option value="3" <%if (grade.equals("3"))
				out.print("selected");%>>3�г�
	</option>
	<option value="4" <%if (grade.equals("4"))
				out.print("selected");%>>4�г�
	</option>
</select>