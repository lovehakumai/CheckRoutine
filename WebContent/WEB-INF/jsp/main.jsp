<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ルーティーンの登録画面</title>
</head>
<body>
<form action = "/CheckRoutine/Main" method = "post">
<p>名前を登録してください</p>
<input type = "text" name = "Username" placeholder = "名前を入力">
<h1>以下に曜日ごとのタスクを入力してください</h1>
<p>月曜日</p>
<input type="text"name="mon_mor" placeholder = "月曜日の朝のタスクを入力"><br>
<input type = "text" name = "mon_day" placeholder = "月曜日の昼のタスクを入力"><br>
<input type = "text" name = "mon_eve" placeholder = "月曜日の夕方のタスクを入力"><br>
<p>火曜日</p>
<input type="text" name="tue_mor" placeholder = "火曜日の朝のタスクを入力"><br>
<input type = "text" name = "tue_day" placeholder = "火曜日の昼のタスクを入力"><br>
<input type = "text" name = "tue_eve" placeholder = "火曜日の夕方のタスクを入力"><br>
<p>水曜日</p>
<input type="text"name="wed_mor" placeholder = "水曜日の朝のタスクを入力"><br>
<input type = "text" name = "wed_day" placeholder = "水曜日の昼のタスクを入力"><br>
<input type = "text" name = "wed_eve" placeholder = "水曜日の夕方のタスクを入力"><br>
<p>木曜日</p>
<input type="text"name="thi_mor" placeholder = "木曜日の朝のタスクを入力"><br>
<input type = "text" name = "thi_day" placeholder = "木曜日の昼のタスクを入力"><br>
<input type = "text" name = "thi_eve" placeholder = "木曜日の夕方のタスクを入力"><br>
<p>金曜日</p>
<input type="text"name ="fri_mor" placeholder = "金曜日の朝のタスクを入力"><br>
<input type = "text" name = "fri_day" placeholder = "金曜日の昼のタスクを入力"><br>
<input type = "text" name =  "fri_eve" placeholder = "金曜日の夕方のタスクを入力"><br>
<p>土曜日</p>
<input type="text"name="sat_mor" placeholder = "土曜日の朝のタスクを入力"><br>
<input type = "text" name = "sat_day" placeholder = "土曜日の昼のタスクを入力"><br>
<input type = "text" name = "sat_eve" placeholder = "土曜日の夕方のタスクを入力"><br>
<p>日曜日</p>
<input type="text" name ="sun_mor" placeholder = "日曜日の朝のタスクを入力"><br>
<input type = "text" name = "sun_day" placeholder = "日曜日の昼のタスクを入力"><br>
<input type = "text" name = "sun_eve" placeholder = "日曜日の夕方のタスクを入力"><br>
<input type = "submit" value = "送信">
</form>
</body>
</html>