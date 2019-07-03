<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<% out.print("<h1>Hello JSP</h1>"); %>
<%
 Calendar cal = Calendar.getInstance();
int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.DAY_OF_MONTH)+1;
int date = cal.get(Calendar.DATE);
int hour = cal.get(Calendar.HOUR_OF_DAY);
int min = cal.get(Calendar.MINUTE);
int sec = cal.get(Calendar.SECOND);

 out.print(year + "년 " + month + "월 " + date + "일 ");
 out.print(hour + "시 " + min + "분 " + sec + "초 ");
%>
<%="<h1>Bye JSP</h1>"%>