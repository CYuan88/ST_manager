<%@ page import="dao.myconn" %>
<%@ page language="java" import="java.util.*,java.sql.Connection,java.sql.*,java.io.*,javax.sql.*,javax.naming.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'studentIndex.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/base.css" type="text/css"></link>

  </head>
  
<!--    <img id="img1" src="image1/bh1.PNG" width="40" height="20" style="margin-top:8px;margin-left:5px;"> -->
   <frameset rows="20%,80%">
         <frame src="tea_title.jsp" scrolling="no">
         <frameset cols="25,75">
             <frame src="left.jsp" scrolling="no">
             <frame src="right.jsp" name="right" scrolling="no">
         </frameset>
     </frameset>
 
 <%--  <body>
  <%request.setCharacterEncoding("utf-8");%>
    <div style="background:#FAF0E6;width:960;height:80;position:absolute;left:0;top:0;visibility:visible">
           <div style="width:400;height:50;position:absolute;left:50;top:10">
                <font size="8" face="">软件学院</font><font><b>教学一体化平台</b></font><br>
                <font>the school of software</font>
           </div>
           <div style="width:150 height:50;position:absolute;left:600;top:17;visibility:visible">
                 <% String a=session.getAttribute("teacherno").toString();
                 Connection conn=new myconn().getConn();
                 String sql="select tname from teacher_info where tno="+a;
	             PreparedStatement pstmt=conn.prepareStatement(sql);
	            ResultSet rs=pstmt.executeQuery(sql);
	     if(rs.next())
	     {
	           String teachername=rs.getString("tname");
	           if(rs!=null)rs.close();
	    	   if(pstmt!=null) pstmt.close();
		       if(conn!=null) pstmt.close();
		       out.print(teachername);
		        out.print("("+a+")");
	     }
	     else
	     {
	         if(rs!=null)rs.close();
	    	   if(pstmt!=null) pstmt.close();
		       if(conn!=null) pstmt.close();
	     }
	     
    
     %>
           </div>
            <div style="width:200 height:50;position:absolute;left:750;top:10;visibility:visible">
                    <img src="image/捕获.PNG" width="200" height="30">
           </div>
    </div>
    
    <div style="background:#4169E1;width:960;height:40;position:absolute;left:0;top:80;visibility:visible">
        <div style="position:absolute;left:50;top:15;visibility:visible" > <font color="white" size="4"> 我的桌面</font> </div>
        <div style="position:absolute;left:200;top:15;visibility:visible" > <font color="white" size="4"> 学籍成绩</font> </div>
        <div style="position:absolute;left:350;top:15;visibility:visible" > <font color="white" size="4"> 培养管理</font> </div>
        <div style="position:absolute;left:500;top:15;visibility:visible" > <font color="white" size="4"> 考试报名</font> </div>
        <div style="position:absolute;left:650;top:15;visibility:visible" > <font color="white" size="4"> 教学评价</font> </div>
    </div>
    
    
    <div style="background:#ffffff;width:960;height:410;position:absolute;left:0;top:120;visibility:visible">
        <frameset cols="30%,70%">
           <frame src="left.jsp" name="left" scrolling="no">
           <frame src="right.jsp" name="right" scrolling="no">
        </frameset>
           
    </div>
    
    
    <div style="background:#ffffff;width:960;height:50;position:absolute;left:0;top:530;visibility:visible">
         <hr width="960" color="00BFFF">
        <p align="center"> Copyright(C)  All rights served @yaunc 8000115298</p>
           
    </div>
  </body> --%>
</html>
