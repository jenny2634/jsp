<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<body>
<%
 String[][] tableData = {
 {"A", "10", "20", "30"},
 {"B", "20", "30", "40"},
 {"C", "30", "40", "50"}
 };
%>
 <table border="1">
 <tr>
 <th>구분</th><th>국어</th><th>영어</th><th>수학</th>
 </tr>
<%
    for(int i = 0; i < tableData.length; i++) {
       out.print("<tr>");
       for(int j = 0; j < tableData[i].length; j++) {
          out.print("<td>" + tableData[i][j] + "</td>");
       }
       out.print("</tr>");
    }
%>
 </table>
</body>