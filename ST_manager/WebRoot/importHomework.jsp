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
  <form action="homework.action" method="post">
    <table border="0" align="center" width="600">
           <tr><td align="right" id="t">作业号：*</td>
               <td><input type="text" name="hno"></td>
      
           </tr><br><br>
           
           <tr><td align="right">开始时间：*</td>
               <td><input type="input" name="stime"></td>
           </tr><br><br>
           <tr><td align="right">提交时间：*</td>
               <td><input type="input" name="dtime"></td>
           </tr><br><br>
           <tr><td align="right">作业内容：*</td>
               <td><textarea  name="htext"></textarea></td>
               
           </tr><br><br>
       </table>
       <br>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="submit" value="提交">&nbsp;&nbsp;&nbsp;<input type="reset" value="取消"> 
      </form>
  </body>
</html>
