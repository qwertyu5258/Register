<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


    <%@ page import ="dtodao.Dao"%>
    <%@ page import ="java.sql.Timestamp" %>
    <%request.setCharacterEncoding("utf-8"); %>
  
   <jsp:useBean id ="article" scope="page" class ="dtodao.Dto">
  <jsp:setProperty name ="article" property="*"/>
  </jsp:useBean>
  

  <style>
      table {
       margin-left: auto;
        margin-right: auto;
      }

    </style>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Result 화면</title>
</head>
<body>

	<%!int resultp1 = 0;
	int resultp2 = 0;
	int resultp3 = 0;
	int resultp4 = 0;
	int resultp5 = 0;%>
	
	<%
	
	//개인 점수 정리 계산 코드 
	if((request.getParameter("st1").equals("p1"))){
		resultp1+=1;
	}else if(request.getParameter("st1").equals("p2")){
		resultp2+=1;
	}else if(request.getParameter("st1").equals("p3")){
		resultp3+=1;
	}else if(request.getParameter("st1").equals("p4")){
		resultp4+=1;
	}else if(request.getParameter("st1").equals("p5")){
		resultp5+=1;
	}
	

	
	if((request.getParameter("bf1").equals("p1"))){
		resultp1+=1;
	}else if(request.getParameter("bf1").equals("p2")){
		resultp2+=1;
	}else if(request.getParameter("bf1").equals("p3")){
		resultp3+=1;
	}else if(request.getParameter("bf1").equals("p4")){
		resultp4+=1;
	}else if(request.getParameter("bf1").equals("p5")){
		resultp5+=1;
	}

	if((request.getParameter("bg").equals("p1"))){
		resultp1+=1;
	}else if(request.getParameter("bg").equals("p2")){
		resultp2+=1;
	}else if(request.getParameter("bg").equals("p3")){
		resultp3+=1;
	}else if(request.getParameter("bg").equals("p4")){
		resultp4+=1;
	}else if(request.getParameter("bg").equals("p5")){
		resultp5+=1;
	}
	
	if((request.getParameter("lol").equals("p1"))){
		resultp1+=1;
	}else if(request.getParameter("lol").equals("p2")){
		resultp2+=1;
	}else if(request.getParameter("lol").equals("p3")){
		resultp3+=1;
	}else if(request.getParameter("lol").equals("p4")){
		resultp4+=1;
	}else if(request.getParameter("lol").equals("p5")){
		resultp5+=1;
	}
	
	if((request.getParameter("bb").equals("p1"))){
		resultp1+=1;
	}else if(request.getParameter("bb").equals("p2")){
		resultp2+=1;
	}else if(request.getParameter("bb").equals("p3")){
		resultp3+=1;
	}else if(request.getParameter("bb").equals("p4")){
		resultp4+=1;
	}else if(request.getParameter("bb").equals("p5")){
		resultp5+=1;
	}
	
	if((request.getParameter("soccer").equals("p1"))){
		resultp1+=1;
	}else if(request.getParameter("soccer").equals("p2")){
		resultp2+=1;
	}else if(request.getParameter("soccer").equals("p3")){
		resultp3+=1;
	}else if(request.getParameter("soccer").equals("p4")){
		resultp4+=1;
	}else if(request.getParameter("soccer").equals("p5")){
		resultp5+=1;
	}
	
	

	

  		article.setRegdate(new Timestamp(System.currentTimeMillis()));
  		article.setIp(request.getRemoteAddr());
  	
  		Dao dbPro = Dao.getInstance();
  	
  //		resultp1 = dbPro.getArticle();
  //		  		
  		String Aa = dbPro.insertArticle2(resultp1, resultp2,resultp3,resultp4,resultp5);
  
  		int like1=0;
  		int like2=0;
  		int like3=0;
  		int like4=0;
  		int like5=0;
  		
  		String likelist[] =Aa.split(",");
 		
 		
  %>
  <br>
  <h1 align="center">데이터 베이스 게임 선호  결과</h1><br>

  <table>
  <tr>
 <th>게임 매우 좋음 수 :</th><th><%=likelist[0] %> 명</th>  
 
  </tr>
   <tr>
 <th>게임 그냥 좋음 수 :</th><th><%=likelist[1] %> 명</th>  
 
  </tr>
   <tr>
 <th>게임 보통 수 :</th><th><%=likelist[2] %> 명</th>  
 
  </tr>
   <tr>
 <th>게임 별로 수 :</th><th><%=likelist[3] %> 명</th>  
 
  </tr>
   <tr>
 <th>게임 매우 별로 수 :</th><th><%=likelist[4] %> 명</th>  
 
  </tr>  
  
  </table> 
  
  
  
</body>
</html>