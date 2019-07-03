<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Part part = request.getPart("file1");
	String fileName = part.getSubmittedFileName();
	long fileSize = part.getSize();
	part.write(fileName);
	out.print(fileName);
	out.print(fileSize);
%>html>
