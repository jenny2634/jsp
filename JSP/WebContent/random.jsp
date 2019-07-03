<%@page import="java.util.Calendar"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	//request.getParameter 결과는 항상 문자열
	//								name
	String num = request.getParameter("num");
	Random ran = new Random();
	int n = Integer.parseInt(num);
	out.print(ran.nextInt(n)); //0~5
%>
<%=ran.nextInt(n)%>
<table>
	<tr>
		<td>1</td>
	</tr>
</table>
<%
	Calendar c = Calendar.getInstance();
	int hour = c.get(Calendar.HOUR_OF_DAY);
%>
<input type="checkbox"
<%
	if (hour < 12) {
		out.print("checked");
	} else {
		
	}
%>

>




