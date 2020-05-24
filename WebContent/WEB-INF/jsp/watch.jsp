<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "jp.routine.webstudy.User,jp.routine.webstudy.Day,jp.routine.webstudy.Nichiji" %>
<%
Nichiji n = (Nichiji)application.getAttribute("nichiji");
User user= (User)session.getAttribute("user");
Day M = (Day)application.getAttribute("Monday");
Day T = (Day)application.getAttribute("Tuesday");
Day W = (Day)application.getAttribute("Wednesday");
Day Th = (Day)application.getAttribute("Thirsday");
Day F = (Day)application.getAttribute("Friday");
Day Sa = (Day)application.getAttribute("Saturday");
Day Su = (Day)application.getAttribute("Sunday");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録タスクの確認</title>
</head>
<body>
<p><%= user.getName() %>さんのタスク</p>
<p></p>
<p>最終更新日時<%=n.getDate() %></p>
<table border = "1">
<tr>
<th>曜日名</th><th>朝</th><th>昼</th><th>夜</th>
</tr>
<tr>
<td><%=M.getDayname() %></td>
<td><%=M.getMorningtask() %></td>
<td><%=M.getDaytask() %></td>
<td><%=M.getEveningtask() %></td>
</tr>

<tr>
<td><%=T.getDayname() %></td>
<td><%=T.getMorningtask() %></td>
<td><%=T.getDaytask() %></td>
<td><%=T.getEveningtask() %></td>
</tr>

<tr>
<td><%=W.getDayname() %></td>
<td><%=W.getMorningtask() %></td>
<td><%=W.getDaytask() %></td>
<td><%=W.getEveningtask() %></td>
</tr>

<tr>
<td><%=Th.getDayname() %></td>
<td><%=Th.getMorningtask() %></td>
<td><%=Th.getDaytask() %></td>
<td><%=Th.getEveningtask() %></td>
</tr>

<tr>
<td><%=F.getDayname() %></td>
<td><%=F.getMorningtask() %></td>
<td><%=F.getDaytask() %></td>
<td><%=F.getEveningtask() %></td>
</tr>

<tr>
<td><%=Sa.getDayname() %></td>
<td><%=Sa.getMorningtask() %></td>
<td><%=Sa.getDaytask() %></td>
<td><%=Sa.getEveningtask() %></td>
</tr>

<tr>
<td><%=Su.getDayname() %></td>
<td><%=Su.getMorningtask() %></td>
<td><%=Su.getDaytask() %></td>
<td><%=Su.getEveningtask() %></td>
</tr>
<a href ="/CheckRoutine/Routine">戻る</a>
</table>
</body>
</html>