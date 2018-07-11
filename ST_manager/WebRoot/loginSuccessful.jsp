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
  <%request.setCharacterEncoding("utf-8"); %>
    登录成功！欢迎进入！ <br>
    <%=session.getAttribute("studentno")%><br>
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
	     }
	     else
	     {
	         if(rs!=null)rs.close();
	    	   if(pstmt!=null) pstmt.close();
		       if(conn!=null) pstmt.close();
	     }
	     
    
     %>
     
    <!--  顶部 -->
    <!--  <div style="background:#FAF0E6;width:960;height:80;position:absolute;left:0;top:0;visibility:visible">
           <div style="width:400;height:50;position:absolute;left:50;top:10">
                <font size="8" face="">软件学院</font><font>教学一体化平台</font><br>
                <font>the school of software</font>
           </div>
           登录成功；
    </div>
    
    <div style="background:#000070;width:960;height:50;position:absolute;left:0;top:80;visibility:visible">
            <div > <font color="white" size=""> 我的桌面</font> </div>
    </div> -->
     
  </body>
</html>
