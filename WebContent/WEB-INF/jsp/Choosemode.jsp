<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>生活改善サイト</title>
</head>
<body>
<h1>モードを選択</h1>
<%--href以下/CheckRoutine/WEB-INF/jsp/main.jspではだめだった何故--%>
<a href = "/CheckRoutine/Main">タスクの登録</a><br>
<p></p>
<a href = "/CheckRoutine/Watch">登録タスクの確認</a><br>
<p></p>
<a href = "/CheckRoutine/Check">登録したタスクの採点</a><br>
<p></p>
<a href = "/CheckRoutine/Remake">タスクの削除と更新</a><br>
</body>
</html>