<%@page import="edu.jsp.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String userId = request.getParameter("user_id");
	MemberDao dao = new MemberDao();
	String result = dao.selectMemberById(userId);
	if (result == null) {
%>
{"result":true, "msg":"���԰���"}
<%
	} else {
%>
{"result":false, "msg":"���ԺҰ�"}
<%
	}
%>


