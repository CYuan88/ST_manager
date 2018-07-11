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
    
    <title>My JSP 'tea_title.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/base.css" type="text/css"></link>

  </head>
  
  <body style="background:#FAF0E6;">
     <%request.setCharacterEncoding("utf-8");%>
    <div style="background:#FAF0E6;width:960;height:100;position:absolute;left:0;top:0;visibility:visible">
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
                    <img id="img1" src="image1/bh1.PNG" width="40" height="20" onclick="window.parent.location.href='index.jsp'" style="margin-top:8px;margin-left:5px;">
           </div>
    </div>
  </body>
</html>
