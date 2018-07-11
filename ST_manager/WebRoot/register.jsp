<%@ page language="java" import="java.util.*,java.io. *,java.sql.*" pageEncoding="utf-8"%>
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
  
  <body  style="background:#FAF0E6;">
  <%request.setCharacterEncoding("utf-8"); %>
    <div style="background:#fff;width:960;height:150;position:absolute;left:0;top:0;visibility:visible;margin:auto auto auto 200px;">
           <div style="width:400;height:100;position:absolute;left:50;top:50">
                <font size="8" face="">软件学院</font><font>教学一体化平台</font><br>
                <font>the school of software</font>
           </div>
    </div>
    <div style="background:#D3D3D3;width:960;height:300;position:absolute;left:0;top:150;visibility:visible;margin:auto auto auto 200px;">
           <div style="background:#6495ED;width:70;height:70;position:absolute;left:50;top:40"></div>
           <div style="background:#4169E1;width:70;height:70;position:absolute;left:50;top:111"></div>
           <div style="background:#ADD8E6;width:70;height:70;position:absolute;left:50;top:182"></div>
           
           <div style="background:#87CEEB;width:70;height:70;position:absolute;left:121;top:40"></div>
           <div style="background:#00BFFF;width:70;height:70;position:absolute;left:121;top:111"></div>
           <div style="background:#F0FFFF;width:70;height:70;position:absolute;left:121;top:182"></div>
           
           <div style="background:#00FFFF;width:70;height:70;position:absolute;left:192;top:111"></div>
           <div style="background:#3CB371;width:70;height:70;position:absolute;left:192;top:182"></div>
           
           <div style="background:#FF0000;width:70;height:70;position:absolute;left:263;top:182"></div>
           
           
          <!--  用户登录div -->
          <div style="background:#D3D3D3width:400;height:212;position:absolute;left:350;top:10;visibility:visible">
          <b><font size="6" face="楷体">学生注册</font></b><br>
          <form action="register.action" method="post">
       <table border="0" align="center" width="600">
           <tr><td align="right" id="t">姓名：*</td>
               <td><input type="text" name="sname"></td>
               <td id="i">用户名由字母开头，后跟字母、下划线或数字</td>
           </tr>
           <tr><td align="right">学号：*</td>
               <td><input type="text" name="sno"></td>
               
           </tr>
           <tr><td align="right">密码：*</td>
               <td><input type="password" name="spwd"></td>
               <td>设置密码，至少6位！</td>
           </tr>
           <tr><td align="right">确认密码：*</td>
               <td><input type="password" name="spwd2"></td>
               <td>请再次输入密码</td>
           </tr>
           <tr>
              <td align="right">性别：*</td>
              <td><input type="radio" name="sex" value="Male" checked>男
                  <input type="radio" name="sex" value="Female" >女
              </td>
              <td>请输入你的性别</td>
           </tr>
           <tr><td align="right">手机号：*</td>
               <td><input type="text" name="sphone"></td>
               <td>请再次输入密码</td>
           </tr>
           <tr>
              <td align="right">邮箱地址：*</td>
              <td><input type="text" name="sEmail"></td>
              <td>请填写你的常用邮箱，可以用此来找回密码！</td>
           </tr>
       </table>
       <br>
       &nbsp;&nbsp;<input type="submit" value="提交">&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"> 
       &nbsp;&nbsp;&nbsp;<a href="index.jsp">返回</a>
    </form>
        
           
          
          </div>
        
        
        
        
    </div>
    
    <div style="background:#fff;width:960;height:150;position:absolute;left:0;top:450;visibility:visible;margin:auto auto auto 200px;">
         <div style="width:960;height:50;position:absolute;left:50;top:5;visibility:visible">
             <font >南昌大学科技发展有限公司     版权所有</font>
         </div>
    </div>
  </body>
</html>
