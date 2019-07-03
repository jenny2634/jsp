<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	File file = new File("c:/dev");
	File[] files = file.listFiles();
	for(int i=0; i<files.length ; i++){
		File f = files[i];
		if(f.isFile()){
			out.print("<a href=''>" + f.getName() + "</a>");
			out.print("<hr>");
		}
	}
%>