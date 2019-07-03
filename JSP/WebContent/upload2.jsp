<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String savePath = "/dev";//workspace(tomcat) 드라이브(C/D)
	int size = 1024 * 1024 * 10;
	MultipartRequest mRequest = new MultipartRequest(request, savePath, size, "utf-8",
			new DefaultFileRenamePolicy());
	
	String id = mRequest.getParameter("id");
	out.print("id : " + id + "<br>");
	//사용자가 브라우저에서 첨부한 파일명
	String original = mRequest.getOriginalFileName("file1");
	
	//중복된 파일이 존재하는 경우 cos.jar(MultipartRequest)
	//라이브러리가 파일명을 자동으로 변경
	//업로드 후 변경된 파일명
	File file = mRequest.getFile("file1");
	String saveFileName = file.getName();
	
	out.print(original + "<br>");
	out.print(saveFileName + "<br>");
%>