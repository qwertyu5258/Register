<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

  <style>
      table {
       margin-left: auto;
        margin-right: auto;
        color:gray;
      }
      .jumbotron{
      background-image: url('image/bg1.jpg');
      backgoound-size:cover;
      color: darkgray;
      }
body{
 
 background-image: url('image/bg2.jpg');
  background-size:cover;
 }
    </style>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>

<div class="jumbotron" >
  <h1 class="text-center">게임 선호 테스트</h1>
 
  <p class ="text-center"><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
</div>


<h1 align="center">게임 선호  테스트</h1>
<form name ="survey" method="post" action="Result.jsp">

<table>
	<tr bgcolor="#4C0B5F">
	<th>　　　　　　　&nbsp;&nbsp;</th><th>매우만족<th>　만족　<th>　보통　<th>　불만　 <th>매우 불만
	</tr>
	<tr>
	<th>'스타크래프트' 재밌습니까? <th><center><input type="RADIO" style="-align:middle" size=10 NAME="st1" VALUE="p1" required ></center>
					<th><center><input type="RADIO" size=10 NAME="st1" VALUE="p2"  required></center>
					<th><center><input type="RADIO" size=10 NAME="st1" VALUE="p3"  required></center>
					<th><center><input type="RADIO" size=10 NAME="st1" VALUE="p4"  required></center>
					<th><center><input type="RADIO" size=10 NAME="st1" VALUE="p5" required></center>
	</tr>
		<th>'배틀그라운드' 재밌습니까? <th><center><input type="RADIO" size=10 NAME="bg" VALUE="p1" required>
					<th><center><input type="RADIO" size=10 NAME="bg" VALUE="p2" required>
					<th><center><input type="RADIO" size=10 NAME="bg" VALUE="p3" required>
					<th><center><input type="RADIO" size=10 NAME="bg" VALUE="p4" required>
					<th><center><input type="RADIO" size=10 NAME="bg" VALUE="p5" required>
	</tr>
		<th>'배틀필트1' 재밌습니까? <th><center><input type="RADIO" size=10 NAME="bf1" VALUE="p1"  required>
					<th><center><input type="RADIO" size=10 NAME="bf1" VALUE="p2" required>
					<th><center><input type="RADIO" size=10 NAME="bf1" VALUE="p3" required>
					<th><center><input type="RADIO" size=10 NAME="bf1" VALUE="p4" required>
					<th><center><input type="RADIO" size=10 NAME="bf1" VALUE="p5" required>
	</tr>
		<th>'롤' 재밌습니까? <th><center><input type="RADIO" size=10 NAME="lol" VALUE="p1" required>
					<th><center><input type="RADIO" size=10 NAME="lol" VALUE="p2" required>
					<th><center><input type="RADIO" size=10 NAME="lol" VALUE="p3" required>
					<th><center><input type="RADIO" size=10 NAME="lol" VALUE="p4" required>
					<th><center><input type="RADIO" size=10 NAME="lol" VALUE="p5" required>
	</tr>
		<th>'야구' 재밌습니까? <th><center><input type="RADIO" size=10 NAME="bb" VALUE="p1" required>
					<th><center><input type="RADIO" size=10 NAME="bb" VALUE="p2" required>
					<th><center><input type="RADIO" size=10 NAME="bb" VALUE="p3" required>
					<th><center><input type="RADIO" size=10 NAME="bb" VALUE="p4" required>
					<th><center><input type="RADIO" size=10 NAME="bb" VALUE="p5" required>
	</tr>
		<th>'축구' 재밌습니까? <th><center><input type="RADIO" size=10 NAME="soccer" VALUE="p1" required>
					<th><center><input type="RADIO" size=10 NAME="soccer" VALUE="p2" required>
					<th><center><input type="RADIO" size=10 NAME="soccer" VALUE="p3" required>
					<th><center><input type="RADIO" size=10 NAME="soccer" VALUE="p4" required>
					<th><center><input type="RADIO" size=10 NAME="soccer" VALUE="p5" required>
	</tr>


<tr>
<th>

<center><button type="submit" class="btn">제출</button></center>

</tr>



</table>

</form>
</body>
</html>