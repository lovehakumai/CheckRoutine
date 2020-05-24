<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jp.routine.webstudy.Day,jp.routine.webstudy.Nichiji,jp.routine.webstudy.User" %>
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
<title>タスクの採点</title>
</head>
<body>
<p>先週作成したタスクについて自己採点をしてみましょう</p>
<form action = "/CheckRoutine/Check" method = "post">

<%= M.getDayname() %><br>
朝のタスク<%= M.getMorningtask() %><br>
Very Good!<input type = "radio" name="mon1" value = "3"><br>
Good!<input type = "radio" name="mon2" value = "2"><br>
Normal<input type = "radio" name="mon3" value = "1"><br>
昼のタスク<%=M.getDaytask() %><br>
Very Good!<input type = "radio" name="mon4" value = "3"><br>
Good!<input type = "radio" name="mon5" value = "2"><br>
Normal<input type = "radio" name="mon6" value = "1"><br>
夕方のタスク<%=M.getEveningtask() %><br>
Very Good!<input type = "radio" name="mon7" value = "3"><br>
Good!<input type = "radio" name="mon8" value = "2"><br>
Normal<input type = "radio" name="mon9" value = "1"><br>

<%= T.getDayname() %><br>
朝のタスク<%= T.getMorningtask() %><br>
Very Good!<input type = "radio" name="tue1" value = "3"><br>
Good!<input type = "radio" name="tue2" value = "2"><br>
Normal<input type = "radio" name="tue3" value = "1"><br>
昼のタスク<%=T.getDaytask() %><br>
Very Good!<input type = "radio" name="tue4" value = "3"><br>
Good!<input type = "radio" name="tue5" value = "2"><br>
Normal<input type = "radio" name="tue6" value = "1"><br>
夕方のタスク<%=T.getEveningtask() %><br>
Very Good!<input type = "radio" name="tue7" value = "3"><br>
Good<input type = "radio" name="tue8" value = "2"><br>
Normal<input type = "radio" name="tue9" value = "1"><br>

<%= W.getDayname() %><br>
朝のタスク<%= W.getMorningtask() %><br>
Very Good<input type = "radio" name="wed1" value = "3"><br>
Good!<input type = "radio" name="wed2" value = "2"><br>
Normal<input type = "radio" name="wed3" value = "1"><br>
昼のタスク<%=W.getDaytask() %><br>
Very Good!<input type = "radio" name="wed4" value = "3"><br>
Good<input type = "radio" name="wed5" value = "2"><br>
Normal<input type = "radio" name="wed6" value = "1"><br>
夕方のタスク<%=W.getEveningtask() %><br>
Very Good!<input type = "radio" name="wed7" value = "3"><br>
Good!<input type = "radio" name="wed8" value = "2"><br>
Normal<input type = "radio" name="wed9" value = "1"><br>

<%= Th.getDayname() %><br>
朝のタスク<%= Th.getMorningtask() %><br>
Very Good!<input type = "radio" name="thi1" value = "3"><br>
Good!<input type = "radio" name="thi2" value = "2"><br>
Normal<input type = "radio" name="thi3" value = "1"><br>
昼のタスク<%=Th.getDaytask() %><br>
Very Good!<input type = "radio" name="thi4" value = "3"><br>
Good!<input type = "radio" name="thi5" value = "2"><br>
Normal<input type = "radio" name="thi6" value = "1"><br>
夕方のタスク<%=Th.getEveningtask() %><br>
Very Good!<input type = "radio" name="thi7" value = "3"><br>
Good!<input type = "radio" name="thi8" value = "2"><br>
Normal<input type = "radio" name="thi9" value = "1"><br>

<%= F.getDayname() %><br>
朝のタスク<%= F.getMorningtask() %><br>
Very Good!<input type = "radio" name="fri1" value = "3"><br>
Good!<input type = "radio" name="fri2" value = "2"><br>
Normal<input type = "radio" name="fri3" value = "1"><br>
昼のタスク<%=F.getDaytask() %><br>
Very Good!<input type = "radio" name="fri4" value = "3"><br>
Good!<input type = "radio" name="fri5" value = "2"><br>
Normal<input type = "radio" name="fri6" value = "1"><br>
夕方のタスク<%=F.getEveningtask() %><br>
Very Good!<input type = "radio" name="fri7" value = "3"><br>
Good!<input type = "radio" name="fri8" value = "2"><br>
Normal<input type = "radio" name="fri9" value = "1"><br>

<%= Sa.getDayname() %><br>
朝のタスク<%= Sa.getMorningtask() %><br>
Very Good!<input type = "radio" name="sat1" value = "3"><br>
Good!<input type = "radio" name="sat2" value = "2"><br>
Normal<input type = "radio" name="sat3" value = "1"><br>
昼のタスク<%=Sa.getDaytask() %><br>
Very Good!<input type = "radio" name="sat4" value = "3"><br>
Good!<input type = "radio" name="sat5" value = "2"><br>
Normal<input type = "radio" name="sat6" value = "1"><br>
夕方のタスク<%=Sa.getEveningtask() %><br>
Very Good!<input type = "radio" name="sat7" value = "3"><br>
Good!<input type = "radio" name="sat8" value = "2"><br>
Normal<input type = "radio" name="sat9" value = "1"><br>

<%= Su.getDayname() %><br>
朝のタスク<%= Su.getMorningtask() %><br>
Very Good!<input type = "radio" name="sun1" value = "3"><br>
Good!<input type = "radio" name="sun2" value = "2"><br>
Normal<input type = "radio" name="sun3" value = "1"><br>
昼のタスク<%=Su.getDaytask() %><br>
Very Good!<input type = "radio" name="sun4" value = "3"><br>
Good!<input type = "radio" name="sun5" value = "2"><br>
Normal<input type = "radio" name="sun6" value = "1"><br>
夕方のタスク<%=Su.getEveningtask() %><br>
Very Good!<input type = "radio" name="sun7" value = "3"><br>
Good!<input type = "radio" name="sun8" value = "2"><br>
Normal<input type = "radio" name="sun9" value = "1"><br>
<input type="submit" value = "送信">
</form>
</body>
</html>