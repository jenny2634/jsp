<%@page import="edu.jsp.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");
	MemberDao mDao = new MemberDao();
	String dbPw = mDao.selectMemberById(userId);

	if (dbPw == null) {
		out.print("���̵� ����");
	} else {
		if (dbPw.equals(userPw)) {
			out.print("����");
		} else {
			out.print("��й�ȣ Ʋ��");
		}
	}
%>