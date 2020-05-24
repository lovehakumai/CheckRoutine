<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import = "jp.routine.webstudy.SourceNum"%>
   <%SourceNum n = (SourceNum)request.getAttribute("result");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>リザルト画面</title>
</head>
<body>
<p>Your score is : <%=n.getNum() %></p>
<p><%=n.getText() %></p>
<p> </p>
<a href="/CheckRoutine/Routine">戻る</a>
</body>
</html>