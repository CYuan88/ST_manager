<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>软件学院教学一体化平台</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/base.css" type="text/css"></link>

  </head>
 
  
  <body style="background:#D3D3D3;">
    
    <%request.setCharacterEncoding("utf-8"); %>
       <a href="importCourse.jsp" target="right"><div style="background:#6495ED;width:150;height:40;position:absolute;left:70;top:40">
                                                 <div style="position:absolute;left:30;top:10">导入课程</div></div></a>
       <a href="importGrade.jsp" target="right"><div style="background:#6495ED;width:150;height:40;position:absolute;left:70;top:100">
                                                 <div style="position:absolute;left:30;top:10">录入成绩</div></div></a>
       <a href="importHomework.jsp" target="right"><div style="background:#6495ED;width:150;height:40;position:absolute;left:70;top:160">
                                                 <div style="position:absolute;left:30;top:10">布置作业</div></div></a>
       <a href="importNotice.jsp" target="right"><div style="background:#6495ED;width:150;height:40;position:absolute;left:70;top:220">
                                                 <div style="position:absolute;left:30;top:10">发布公告</div></div></a>
       <!-- <p><a href="importCourse.jsp" target="right">导入课程</a></p>
       <p><a href="importGrade.jsp" target="right">录入成绩</a></p>
       <p><a href="importHomework.jsp" target="right">布置作业</a></p>
       <p><a href="importNotice.jsp" target="right">发布公告</a></p> -->
  </body>
</html>
