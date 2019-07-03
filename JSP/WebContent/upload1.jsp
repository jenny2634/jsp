<%@page import="java.io.InputStream"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String file1 = request.getParameter("file1");
	InputStream is = request.getInputStream();
	InputStreamReader isr = new InputStreamReader(is);
	BufferedReader reader = new BufferedReader(isr);

	while (true) {
		String data = reader.readLine();
		if (data == null)
			break;
		out.print(data + "<br>");
	}
%>