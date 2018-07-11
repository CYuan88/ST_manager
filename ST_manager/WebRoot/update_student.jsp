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
  
  <body>
   
    <%=session.getAttribute("StudentNo")%>
    <%request.setCharacterEncoding("utf-8"); %>
    
    <div style="background:#FAF0E6;width:960;height:80;position:absolute;left:0;top:0;visibility:visible">
           <div style="width:400;height:50;position:absolute;left:50;top:10">
                <font size="8" face="">软件学院</font><font>教学一体化平台</font><br>
                <font>the school of software</font>
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
        <% 
           Connection conn=new myconn().getConn();
           String sql="update student_info set sname=?,spwd=?,sex=?,sphone=?,sEmail=? where sno=?";
           PreparedStatement pstmt=conn.prepareStatement(sql);
          
           String name=request.getParameter("Sname");
           String sex=request.getParameter("Sex");
           String spwd=request.getParameter("Spwd");
           String sphone=request.getParameter("Sphone");
           String semail=request.getParameter("SEmail");
           String sno=(String)session.getAttribute("StudentNo");
           
          
           pstmt.setString(1,name);
           pstmt.setString(2,spwd);
           pstmt.setString(3,sex);
           pstmt.setString(4,sphone);
           pstmt.setString(5,semail);
           pstmt.setString(6,sno);
           int n=pstmt.executeUpdate();
           if(n>=1){%>重写数据库成功！<br><% }
           else{%>重写数据库失败！<br><% }
           if(pstmt!=null){pstmt.close();}
          if(conn!=null){conn.close();}
          %>
          <a href="personalInfo.jsp"><input type="button" value="返回"></a>
    </div>
    
    
    <div style="background:#ffffff;width:960;height:50;position:absolute;left:0;top:530;visibility:visible">
         <hr width="960" color="00BFFF">
        <p align="center">Copyright(C)  All rights served @yaunc 8000115298</p>
           
    </div>
  </body>
</html>
