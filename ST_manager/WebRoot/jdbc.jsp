<%@ page import="dao.myconn" %>
<%@ page language="java" import="java.util.*,java.sql.*,java.io.*,javax.sql.*,javax.naming.*" pageEncoding="utf-8"%>
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
    This is my JSP first draft page. <br>
    <%/* DataSource ds=null;
      Connection conn=null;
      PreparedStatement pstmt=null;
      ResultSet rs=null;
      InitialContext ctx=new InitialContext();
      ds=(DataSource)ctx.lookup("java:comp/env/jdbc/mysql"); */
      Connection conn=new myconn().getConn();
      out.print(conn.toString());%><br><%
      String sql="insert into student_info values(?,?,?,?,?,?)";
      PreparedStatement pstmt=conn.prepareStatement(sql);
      String str1=request.getParameter("sname");
      String str2=request.getParameter("sno");
      String str3=request.getParameter("spwd");
      String str4=request.getParameter("sex");
      String str5=request.getParameter("sphone");
      String str6=request.getParameter("sEmail");
      pstmt.setString(1,str1);
      pstmt.setString(2,str2);
      pstmt.setString(3,str3);
      pstmt.setString(4,str4);
      pstmt.setString(5,str5);
      pstmt.setString(6,str6);
      int n=pstmt.executeUpdate();
      if(n==1){%> 数据插入成功<br><br><%
            if(pstmt!=null) pstmt.close();
            if(conn!=null) pstmt.close();
            %><a href="index.jsp">登录</a><%
             //response.sendRedirect("index.jsp");
             response.setHeader("refresh","3;url=index.jsp");
         }
      else{%> 数据插入失败<%}
      if(pstmt!=null) pstmt.close();
      if(conn!=null) pstmt.close();
     
     %>
     
  </body>
</html>
