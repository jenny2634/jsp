<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	//get,post,delete, put, trace,options
	String method = request.getMethod();
	out.print(method + "<br>");

	//client ip address
	String ip = request.getRemoteAddr();
	out.print(ip + "<br>");
	// client header ����
	String language = request.getHeader("accept-language");
	String userAgent = request.getHeader("user-agent");
	out.print(language + "<br>");
	out.print(userAgent + "<br>");
	//iterator, collection..
	//while ���
	//http://localhost/method.jsp?aa=hello&&bb=222&djdjd=1jsdf
	Enumeration<String> names = request.getParameterNames();
	while (names.hasMoreElements()) {
		String name = names.nextElement();//nameã�Ƴ�
		String value = request.getParameter(name);//name�̿� value
		out.print("name: " + name + "/value: " + value + "<br>");
	}
%>