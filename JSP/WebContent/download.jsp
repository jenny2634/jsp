<%@page import="java.io.IOException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%
   String fileName = request.getParameter("file_name");
   String filePath = "/dev/" + fileName;
   InputStream is = null;
   OutputStream os = null;
   try {
      response.setContentType("application/octet-stream");
      response.setHeader("Content-Disposition", "attatchment; filename=" + fileName);
      /* ������ ������� �ִ� out ��ü �ʱ�ȭ */
      out.clear();
      out = pageContext.pushBody();
      byte[] b = new byte[1024];
      is = new FileInputStream(filePath);
      os = response.getOutputStream();

      int data = 0;
      while ((data = is.read(b)) != -1) {
         os.write(b);
      }
      os.flush();
   } catch (IOException e) {
      e.printStackTrace();
   } finally {
      if (os != null) {
         try {
            os.close();
         } catch (IOException e) {
         }
         ;
      }
      if (is != null) {
         try {
            is.close();
         } catch (IOException e) {
         }
         ;
      }
   }
%>