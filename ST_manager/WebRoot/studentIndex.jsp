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
    
    <title>软件学院教学一体化平台</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/base.css" type="text/css"></link>

  </head>
  
  <body style="background:#FAF0E6;">
  <%request.setCharacterEncoding("utf-8");%>
    <div style="background:#fff;width:960;height:100;position:absolute;left:0;top:0;visibility:visible;margin:auto auto auto 200px;">
           <div style="width:400;height:50;position:absolute;left:50;top:10">
                <font size="8" face="">软件学院</font><font><b>教学一体化平台</b></font><br>
                <font>the school of software</font>
           </div>
           <div style="width:150 height:50;position:absolute;left:600;top:17;visibility:visible">
                 <% String a=session.getAttribute("studentno").toString();
                 Connection conn=new myconn().getConn();
                 
                 String sql="select sname from student_info where sno="+a;
	             PreparedStatement pstmt=conn.prepareStatement(sql);
	            ResultSet rs=pstmt.executeQuery(sql);
	     if(rs.next())
	     {
	           String studentname=rs.getString("sname");
	           if(rs!=null)rs.close();
	    	   if(pstmt!=null) pstmt.close();
		       if(conn!=null) pstmt.close();
		       out.print(studentname);
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
                   <a href="index.jsp"> <img id="img1" src="image1/bh1.PNG" width="40" height="20" style="margin-top:8px;margin-left:5px;"></a>
           </div>
    </div>
    
    <div style="background:#4169E1;width:960;height:40;position:absolute;left:0;top:100px;visibility:visible;margin:auto auto auto 200px;">
        <div style="position:absolute;left:50;top:15;visibility:visible" > <a href="studentIndex.jsp"><font color="white" size="4"> 我的桌面</font></a> </div>
        <div style="position:absolute;left:200;top:15;visibility:visible" > <font color="white" size="4"> 学籍成绩</font> </div>
        <div style="position:absolute;left:350;top:15;visibility:visible" > <font color="white" size="4"> 培养管理</font> </div>
        <div style="position:absolute;left:500;top:15;visibility:visible" > <font color="white" size="4"> 考试报名</font> </div>
        <div style="position:absolute;left:650;top:15;visibility:visible" > <font color="white" size="4"> 教学评价</font> </div>
    </div>
    
    
    <div style="background:#ffffff;width:960;height:410;position:absolute;left:0;top:140;visibility:visible;margin:auto auto auto 200px;">
        <a href="personalInfo.jsp"><div style="width:180;height:220;position:absolute;left:50;top:20;visibility:visible">
            <img src="image1/grxx1.PNG" width="180" height="220">
        </div></a>
        
        <div style="width:110;height:220;position:absolute;left:231;top:20;visibility:visible">
            <img src="image1/xkzx.PNG" width="110" height="220">
        </div>
        
        <div style="width:150;height:109;position:absolute;left:342;top:20;visibility:visible">
            <img src="image1/xspj.PNG" width="150" height="109">
        </div>
        <div style="width:150;height:109;position:absolute;left:342;top:131;visibility:visible">
            <img src="image1/pyfa.PNG" width="150" height="109">
        </div>
        
        <a href="receiveNote.jsp"><div style="width:300;height:109;position:absolute;left:493;top:20;visibility:visible">
            <img src="image1/ysly.PNG" width="300" height="109">
        </div></a>
        <a href="receviceNotice.jsp"><div style="width:300;height:109;position:absolute;left:493;top:131;visibility:visible">
            <img src="image1/ysgg.PNG" width="300" height="109">
        </div></a>
        
        
        <a href="studentGrade.jsp"><div style="width:89;height:120;position:absolute;left:50;top:241;visibility:visible">
            <img src="image1/cjcx.PNG" width="89" height="120">
        </div></a>
        <div style="width:89;height:120;position:absolute;left:141;top:241;visibility:visible">
            <img src="image1/jxzl.PNG" width="89" height="120">
        </div>
        <a href="queryCourse.jsp"><div style="width:110;height:120;position:absolute;left:231;top:241;visibility:visible">
            <img src="image1/skjh.PNG" width="110" height="120">
        </div></a>
        <div style="width:150;height:120;position:absolute;left:342;top:241;visibility:visible">
            <img src="image1/kscj.PNG" width="150" height="120">
        </div>
        <div style="width:149;height:120;position:absolute;left:493;top:241;visibility:visible">
            <img src="image1/xjkp.PNG" width="149" height="120">
        </div>
        <div style="width:150;height:120;position:absolute;left:644;top:241;visibility:visible">
            <img src="image1/shksbm.PNG" width="149" height="120">
        </div>
           
    </div>
    
    
    <div style="background:#ffffff;width:960;height:50;position:absolute;left:0;top:530;visibility:visible;margin:auto auto auto 200px;">
         <hr width="960" color="00BFFF">
        <p align="center">Copyright(C)  All rights served @yaunc 8000115298</p>
           
    </div>
  </body>
</html>
