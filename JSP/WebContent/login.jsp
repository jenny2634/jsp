<%@page import="edu.jsp.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");
	MemberDao mDao = new MemberDao();
	String dbPw = mDao.selectMemberById(userId);

	if (dbPw == null) {
		out.print("아이디 없음");
	} else {
		if (dbPw.equals(userPw)) {
			out.print("성공");
		} else {
			out.print("비밀번호 틀림");
		}
	}
%>