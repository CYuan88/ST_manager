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
    <%request.setCharacterEncoding("utf-8"); %>
    
    <div style="background:#fff;width:960;height:100;position:absolute;left:0;top:0;visibility:visible;margin:auto auto auto 200px;">
           <div style="width:400;height:50;position:absolute;left:50;top:10">
                <font size="8" face="">软件学院</font><font>教学一体化平台</font><br>
                <font>the school of software</font>
           </div>
    </div>
    
    <div style="background:#4169E1;width:960;height:40;position:absolute;left:0;top:100;visibility:visible;margin:auto auto auto 200px;">
        <div style="position:absolute;left:50;top:15;visibility:visible" > <a href="studentIndex.jsp"><font color="white" size="4"> 我的桌面</font></a> </div>
        <div style="position:absolute;left:200;top:15;visibility:visible" > <font color="white" size="4"> 学籍成绩</font> </div>
        <div style="position:absolute;left:350;top:15;visibility:visible" > <font color="white" size="4"> 培养管理</font> </div>
        <div style="position:absolute;left:500;top:15;visibility:visible" > <font color="white" size="4"> 考试报名</font> </div>
        <div style="position:absolute;left:650;top:15;visibility:visible" > <font color="white" size="4"> 教学评价</font> </div>
    </div>
    
    
    <div style="background:#ffffff;width:960;height:410;position:absolute;left:0;top:140;visibility:visible;margin:auto auto auto 200px;">
        <div style="position:absolute;left:80;top:20;visibility:visible">
          <% 
          String Sno=session.getAttribute("studentno").toString();
     Connection conn=new myconn().getConn();
     //String sql="select cname,cno from grade join course on grade.cno=course.cno where sno="+Sno;
     String sql="select * from note ";
	 PreparedStatement pstmt=conn.prepareStatement(sql);
	 ResultSet rs=pstmt.executeQuery(sql);
	 %><table border="2" bgcolor="ccceee" width="650">
   <tr bgcolor="CCCCCC" align="center">
      <td>留言编号</td><td>留言内容</td><td>发布时间</td>
   </tr><% 
	   while(rs.next())
	     {
	     %>
	     <tr align="center">
	        <td><%=rs.getString("notitle") %></td>
	        <td><%=rs.getString("notext")%></td>
	        <td><%=rs.getString("notime") %></td>
	     </tr>
	     <%
	      } 
	   
          %></table><%
               if(rs!=null)rs.close();
	    	   if(pstmt!=null) pstmt.close();
		       if(conn!=null) pstmt.close();
           %>
           </div>
    </div>
    
    
    <div style="background:#ffffff;width:960;height:50;position:absolute;left:0;top:530;visibility:visible;margin:auto auto auto 200px;">
         <hr width="960" color="00BFFF">
        <p align="center"> Copyright(C)  All rights served @yaunc 8000115298</p>
           
    </div>
    
  </body>
</html>
