<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="kr.ac.inha.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="addr" class="kr.ac.inha.AddrBean"/>
<jsp:setProperty name="addr" property="*" />
<jsp:useBean id="am" class="kr.ac.inha.AddManager" scope="application"/>
<% 
    am.add(addr);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>ch07 : addr_add.jsp</title>
    </head>
        <body>
            <div align ="center">
                <h2>등록내용</h2>
                이름 : <jsp:getProperty property="username" name="addr" /><P>
                전화번호 : <%= addr.getTel() %><P>
                이메일 : <%= addr.getEmail() %><P>
                성별 : <%= addr.getSex() %><P>
                <hr>
                <a href="addr_list.jsp">목록보기</a>
            </div>
        </body>
</html>