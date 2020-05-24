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
<%--
各曜日の各タスク(7 * 3)に対し3段階の評価をするため計63項目ある
属性値の付け方は
"曜日名（英語）の最初の3文字 + (1~9)"
とする
 --%>
<%= M.getDayname() %><br>
朝のタスク<%= M.getMorningtask() %><br>
Very Good!<input type = "radio" name="mon_mor" value = "3"><br>
Good!<input type = "radio" name="mon_mor" value = "2"><br>
Normal<input type = "radio" name="mon_mor" value = "1"><br>
昼のタスク<%=M.getDaytask() %><br>
Very Good!<input type = "radio" name="mon_day" value = "3"><br>
Good!<input type = "radio" name="mon_day" value = "2"><br>
Normal<input type = "radio" name="mon_day" value = "1"><br>
夕方のタスク<%=M.getEveningtask() %><br>
Very Good!<input type = "radio" name="mon_eve" value = "3"><br>
Good!<input type = "radio" name="mon_eve" value = "2"><br>
Normal<input type = "radio" name="mon_eve" value = "1"><br>

<h3>*********************************************************************************::</h3>
<%= T.getDayname() %><br>
朝のタスク<%= T.getMorningtask() %><br>
Very Good!<input type = "radio" name="tue_mor" value = "3"><br>
Good!<input type = "radio" name="tue_mor" value = "2"><br>
Normal<input type = "radio" name="tue_mor" value = "1"><br>
昼のタスク<%=T.getDaytask() %><br>
Very Good!<input type = "radio" name="tue_day" value = "3"><br>
Good!<input type = "radio" name="tue_day" value = "2"><br>
Normal<input type = "radio" name="tue_day" value = "1"><br>
夕方のタスク<%=T.getEveningtask() %><br>
Very Good!<input type = "radio" name="tue_eve" value = "3"><br>
Good<input type = "radio" name="tue_eve" value = "2"><br>
Normal<input type = "radio" name="tue_eve" value = "1"><br>
<h3>*********************************************************************************::</h3>
<%= W.getDayname() %><br>
朝のタスク<%= W.getMorningtask() %><br>
Very Good<input type = "radio" name="wed_mor" value = "3"><br>
Good!<input type = "radio" name="wed_mor" value = "2"><br>
Normal<input type = "radio" name="wed_mor" value = "1"><br>
昼のタスク<%=W.getDaytask() %><br>
Very Good!<input type = "radio" name="wed_day" value = "3"><br>
Good<input type = "radio" name="wed_day" value = "2"><br>
Normal<input type = "radio" name="wed_day" value = "1"><br>
夕方のタスク<%=W.getEveningtask() %><br>
Very Good!<input type = "radio" name="wed_eve" value = "3"><br>
Good!<input type = "radio" name="wed_eve" value = "2"><br>
Normal<input type = "radio" name="wed_eve" value = "1"><br>
<h3>*********************************************************************************::</h3>
<%= Th.getDayname() %><br>
朝のタスク<%= Th.getMorningtask() %><br>
Very Good!<input type = "radio" name="thi_mor" value = "3"><br>
Good!<input type = "radio" name="thi_mor" value = "2"><br>
Normal<input type = "radio" name="thi_mor" value = "1"><br>
昼のタスク<%=Th.getDaytask() %><br>
Very Good!<input type = "radio" name="thi_day" value = "3"><br>
Good!<input type = "radio" name="thi_day" value = "2"><br>
Normal<input type = "radio" name="thi_day" value = "1"><br>
夕方のタスク<%=Th.getEveningtask() %><br>
Very Good!<input type = "radio" name="thi_eve" value = "3"><br>
Good!<input type = "radio" name="thi_eve" value = "2"><br>
Normal<input type = "radio" name="thi_eve" value = "1"><br>
<h3>*********************************************************************************::</h3>
<%= F.getDayname() %><br>
朝のタスク<%= F.getMorningtask() %><br>
Very Good!<input type = "radio" name="fri_mor" value = "3"><br>
Good!<input type = "radio" name="fri_mor" value = "2"><br>
Normal<input type = "radio" name="fri_mor" value = "1"><br>
昼のタスク<%=F.getDaytask() %><br>
Very Good!<input type = "radio" name="fri_day" value = "3"><br>
Good!<input type = "radio" name="fri_day" value = "2"><br>
Normal<input type = "radio" name="fri_day" value = "1"><br>
夕方のタスク<%=F.getEveningtask() %><br>
Very Good!<input type = "radio" name="fri_eve" value = "3"><br>
Good!<input type = "radio" name="fri_eve" value = "2"><br>
Normal<input type = "radio" name="fri_eve" value = "1"><br>
<h3>*********************************************************************************::</h3>
<%= Sa.getDayname() %><br>
朝のタスク<%= Sa.getMorningtask() %><br>
Very Good!<input type = "radio" name="sat_mor" value = "3"><br>
Good!<input type = "radio" name="sat_mor" value = "2"><br>
Normal<input type = "radio" name="sat_mor" value = "1"><br>
昼のタスク<%=Sa.getDaytask() %><br>
Very Good!<input type = "radio" name="sat_day" value = "3"><br>
Good!<input type = "radio" name="sat_day" value = "2"><br>
Normal<input type = "radio" name="sat_day" value = "1"><br>
夕方のタスク<%=Sa.getEveningtask() %><br>
Very Good!<input type = "radio" name="sat_eve" value = "3"><br>
Good!<input type = "radio" name="sat_eve" value = "2"><br>
Normal<input type = "radio" name="sat_eve" value = "1"><br>
<h3>*********************************************************************************::</h3>
<%= Su.getDayname() %><br>
朝のタスク<%= Su.getMorningtask() %><br>
Very Good!<input type = "radio" name="sun_mor" value = "3"><br>
Good!<input type = "radio" name="sun_mor" value = "2"><br>
Normal<input type = "radio" name="sun_mor" value = "1"><br>
昼のタスク<%=Su.getDaytask() %><br>
Very Good!<input type = "radio" name="sun_day" value = "3"><br>
Good!<input type = "radio" name="sun_day" value = "2"><br>
Normal<input type = "radio" name="sun_day" value = "1"><br>
夕方のタスク<%=Su.getEveningtask() %><br>
Very Good!<input type = "radio" name="sun_eve" value = "3"><br>
Good!<input type = "radio" name="sun_eve" value = "2"><br>
Normal<input type = "radio" name="sun_eve" value = "1"><br>
<p></p>
<input type="submit" value = "送信">
</form>
</body>
</html>