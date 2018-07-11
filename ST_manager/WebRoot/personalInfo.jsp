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
    
    <title>软件学院教学一体化平台s</title>
    
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
        
           <%
           String Sno=session.getAttribute("studentno").toString();
     Connection conn=new myconn().getConn();
     String sql="select * from student_info where sno="+Sno;
	 PreparedStatement pstmt=conn.prepareStatement(sql);
	 ResultSet rs=pstmt.executeQuery(sql);
	   if(rs.next())
	     {
	           String sname=rs.getString("sname");
	           String sno=rs.getString("sno");
	           String spwd=rs.getString("spwd");
	           String sex=rs.getString("sex");
	           String sphone=rs.getString("sphone");
	           String sEmail=rs.getString("sEmail");
	           if(rs!=null)rs.close();
	    	   if(pstmt!=null) pstmt.close();
		       if(conn!=null) pstmt.close(); 
		       session.setAttribute("StudentNo", sno);
	   %>
	  <table border="0" width="238" height="252">
          <tr><td>姓名:</td><td><%=sname %></td></tr>
          <tr><td>学号:</td><td><%=sno %></td></tr>
          <tr><td>密码:</td><td><%=spwd %></td></tr>
          <tr><td>性别:</td><td><%=sex %></td></tr>
          <tr><td>手机:</td><td><%=sphone %></td></tr>
          <tr><td>邮箱:</td><td><%=sEmail %></td></tr>
          <tr align="center">
              <td colspan="2">
                 <a href="modifyStudent.jsp"><input type="button" value="修改"></a>&nbsp;&nbsp;&nbsp;
                 <a href="studentIndex.jsp"><input type="button" value="返回"></a>
             </td>
          </tr>
     </table><%}
     else
	     {
	         if(rs!=null)rs.close();
	    	   if(pstmt!=null) pstmt.close();
		       if(conn!=null) pstmt.close();
	     }
    %>
    </div>
    
    
    <div style="background:#ffffff;width:960;height:50;position:absolute;left:0;top:530;visibility:visible;margin:auto auto auto 200px;">
         <hr width="960" color="00BFFF">
        <p align="center"> Copyright(C) 江西省南昌大学科技发展有限公司 2018-2020 All rights served 赣ICP 8000115326号</p>
           
    </div>
    <%-- <%
     Connection conn=new myconn().getConn();
     String sql="select * from student_info where sno='8002'";
	 PreparedStatement pstmt=conn.prepareStatement(sql);
	 ResultSet rs=pstmt.executeQuery(sql);
	   if(rs.next())
	     {
	           String sname=rs.getString("sname");
	           String sno=rs.getString("sno");
	           String spwd=rs.getString("spwd");
	           String sex=rs.getString("sex");
	           String sphone=rs.getString("sphone");
	           String sEmail=rs.getString("sEmail");
	           if(rs!=null)rs.close();
	    	   if(pstmt!=null) pstmt.close();
		       if(conn!=null) pstmt.close(); 
	   %>
	  <table border="0" width="238" height="252">
          <tr><td>学号</td><td><input typr="text" name="Sname" value=<%=sname %>></td></tr>
          <tr><td>姓名</td><td><input type="text" name="Sno" value=<%=sno %>></td></tr>
          <tr><td>性别</td><td><input type="text" name="Spwd" value=<%=spwd %>></td></tr>
          <tr><td>年龄</td><td><input type="text" name="Sex" value=<%=sex %>></td></tr>
          <tr><td>体重</td><td><input type="text" name="Sphone" value=<%=sphone %>></td></tr>
          <tr><td>身高</td><td><input type="text" name="SEmail" value=<%=sEmail %>></td></tr>
          <tr align="center">
              <td colspan="2">
                 <input type="submit" value="提交">&nbsp;&nbsp;&nbsp;
                 <input type="reset" value="取消">
             </td>
          </tr>
     </table><%}
     else
	     {
	         if(rs!=null)rs.close();
	    	   if(pstmt!=null) pstmt.close();
		       if(conn!=null) pstmt.close();
	     }
    %> --%>
  </body>
</html>
