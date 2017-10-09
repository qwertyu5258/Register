<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="dtodao.Dao"%>
    <%@ page import ="java.sql.Timestamp" %>
    <%request.setCharacterEncoding("utf-8"); %>
  
 <!--    <jsp:useBean id ="article" scope="page" class =dtodao.Dto>
  <jsp:setProperty name ="article" property="*"/>
  </jsp:useBean>
   -->
  <%
  		article.setRegdate(new Timestamp(System.currentTimeMillis()));
  		article.setIp(request.getRemoteAddr());
  		Dao dbPro = Dao.getInstance();
  		dbPro.insertArticle(article);
  //	response.sendRedirect("list.jsp")
  
  
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>