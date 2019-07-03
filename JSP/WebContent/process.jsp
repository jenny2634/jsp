<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    
    request.setCharacterEncoding("euc-kr");
    String user_name = request.getParameter("user_name");
    String user_age = request.getParameter("user_age");
    String address = request.getParameter("address");
    out.print(user_name);
    out.print(user_age);
    out.print(address);
    
    %>
