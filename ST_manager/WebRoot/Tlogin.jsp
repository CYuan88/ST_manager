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
	<script type="text/javascript" src="jquery-1.12.2.min.js"></script>
	<style type="text/css">
	    .in{align="left"}
	
	</style>
<!-- 	<script type="text/javascript"> -->
<!-- 	 $(function(){ -->
<!-- 	  $("#button1").click(function(){ -->
<!-- 	     var t=new Date().getMilliseconds();//毫秒数 -->
<!-- 	     $("#m").attr({"src":"servlet/checkcode?"+t}); -->
<!-- 	  }); -->
<!-- 	 }) -->
<!-- 	</script> -->
	<script type="text/javascript" src="myjs.js"></script>
	<link rel="stylesheet" href="css/base.css" type="text/css"></link>
  </head>
  
  <body style="background:#FAF0E6;">
  
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
           <div style="background:#F08080;width:70;height:70;position:absolute;left:192;top:182"></div>
           
           <div style="background:#FF0000;width:70;height:70;position:absolute;left:263;top:182"></div>
           
           
          <!--  用户登录div -->
          <div style="background:#D3D3D3width:400;height:212;position:absolute;left:550;top:40;visibility:visible">
          <b><font size="6" face="楷体">老师登录</font></b><br><br><br>
          <form action="Tlogin.action" method="post">
            <font size="5" face="楷体" >用户名：</font><input type="text" class="in" name="Tno" style="margin-left:12px;"><br><br>
          <font size="5" face="楷体" >&nbsp;密码：</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" class="in" name="Tpwd"><br><br>
        
          <input type="submit" value="登录"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
         <form>
         
        
           
          
          </div>
        
        
        
        
    </div>
    
    <div style="background:#fff;width:960;height:150;position:absolute;left:0;top:450;visibility:visible;margin:auto auto auto 200px;">
         <div style="width:960;height:50;position:absolute;left:50;top:5;visibility:visible">
             <font >南昌大学科技发展有限公司     版权所有</font>
         </div>
    </div>
    
  </body>
</html>
