package dao;

import java.sql.*;

import javax.naming.*;
import javax.sql.*;

public class myconn {
	 public Connection getConn() throws NamingException, SQLException, ClassNotFoundException
	   {
		       InitialContext ctx=new InitialContext();
//		       DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/mysql");
//		        return  ds.getConnection();
		       String driverName = "com.mysql.jdbc.Driver";         //����������
		       String userName = "root";                            //���ݿ��û���
		       String userPwd = "ycy278215";                           //����
		       String dbName = "homework";                          //���ݿ���
		       String  url1="jdbc:mysql://localhost:3306/"+dbName;
		       String url2 ="?user="+userName+"&password="+userPwd;
		       String  url3="&useUnicode=true&characterEncoding=utf-8";
		       String url =url1+url2+url3;                   //�γɴ����ݿ��д��������ݿ�������
		       Class.forName(driverName);
		       Connection conn=DriverManager.getConnection(url);
		       return conn;
	   }
}
