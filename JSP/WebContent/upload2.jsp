<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String savePath = "/dev";//workspace(tomcat) ����̺�(C/D)
	int size = 1024 * 1024 * 10;
	MultipartRequest mRequest = new MultipartRequest(request, savePath, size, "utf-8",
			new DefaultFileRenamePolicy());
	
	String id = mRequest.getParameter("id");
	out.print("id : " + id + "<br>");
	//����ڰ� ���������� ÷���� ���ϸ�
	String original = mRequest.getOriginalFileName("file1");
	
	//�ߺ��� ������ �����ϴ� ��� cos.jar(MultipartRequest)
	//���̺귯���� ���ϸ��� �ڵ����� ����
	//���ε� �� ����� ���ϸ�
	File file = mRequest.getFile("file1");
	String saveFileName = file.getName();
	
	out.print(original + "<br>");
	out.print(saveFileName + "<br>");
%>