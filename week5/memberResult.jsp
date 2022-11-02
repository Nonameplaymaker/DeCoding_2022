<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");%>
    <%!
    String msg="회원정보를 제대로 입력해 주세요.";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
</head>
<body>
<%
String id=request.getParameter("id" );
String pwd=request.getParameter("pwd" );
String name=request.getParameter("name" );
String email=request.getParameter("email" );
if (id.length()==0){%>
<jsp:forward page="memberForm.html">
<jsp:param name="msg" value="<%= msg %>" />
</jsp:forward>
<% }%> 
<%
if (pwd.length()==0){%>
<jsp:forward page="memberForm.html">
<jsp:param name="msg" value="<%= msg %>" />
</jsp:forward>
<% }%> 
<% 

if (name.length()==0){%>
<jsp:forward page="memberForm.html">
<jsp:param name="msg" value="<%= msg %>" />
</jsp:forward>
<% }%>
<% 

if (email.length()==0){%>
<jsp:forward page="memberForm.html">
<jsp:param name="msg" value="<%= msg %>" />
</jsp:forward>
<% }%> 


<h2>회원정보</h2><p></p>
아이디: <%= id %><br>
비밀번호:<%= pwd %><br>
이름:<%= name %><br>
이메일 주소:<%= email %><br>
<p></p>
<form action="login2.jsp" method="post">
<input type="submit" value="로그인"></form>
</body>
</html>
