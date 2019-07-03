<%@page import="edu.jsp.dto.MemberDto"%>
<%@page import="edu.jsp.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");
	String userName = request.getParameter("name");
	MemberDto mDto = new MemberDto();
	mDto.setId(userId);
	mDto.setPw(userPw);
	mDto.setName(userName);

	MemberDao mDao = new MemberDao();
	int result = mDao.insertMember(mDto);
	if (result > 0)
		out.print("회원 정보 입력 성공");
	else
		out.print("회원 정보 입력 실패");
%>