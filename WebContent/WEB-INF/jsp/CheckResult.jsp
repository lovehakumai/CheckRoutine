<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   Integer sum = (Integer) session.getAttribute("Sum");
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>リザルト画面</title>
</head>
<body>
<p>
<% if (sum >= 57 ){%>
You are magnificent!
<%}if(sum >= 50 && sum < 57){ %>
You are so cool
<%}else{ %>
You are so Normal
<%} %>
</p>
<p> </p>
<a href="/CheckRoutine/Routine">戻る</a>
</body>
</html>