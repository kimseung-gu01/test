<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="kr.ac.inha.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="am" class="kr.ac.inha.AddManager" scope="application" />
<jsp:useBean id="ab" class="kr.ac.inha.AddrBean" />
<html>
<head>
    <meta http-equiv="Content=Type" content="text/html; charset=utf-8">
    <title>주소록 목록</title>
    </head>
    <body>
        <div align="center">
            <h2>주소록</h2>
            <hr>
            <a href="addr_form.html">주소추가</a><P>
            <table border = "1" width="500">
            <tr>
                <td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td>
            </tr>
            <%
                for (int i = 0; i < am.getAddrList().size(); i++) {
                    ab = am.getAddrList().get(i);
             %>
             <tr>
                <td><%=ab.getUsername() %></td>
                <td><%= ab.getTel() %></td>
                <td><%= ab.getEmail() %></td>
                <td><%= ab.getSex() %></td>
             </tr>
             <%
                }
              %>
            </table>
        </div>
    </body>
</html>