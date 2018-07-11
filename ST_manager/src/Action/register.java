package Action;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import dao.myconn;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class register extends ActionSupport {
	private String sname;
	private String sno;
	private String spwd;
	private String sex;
	private String sphone;
	private String sEmail;
	

	public String getSname() {
		return sname;
	}


	public void setSname(String sname) {
		this.sname = sname;
	}


	public String getSno() {
		return sno;
	}


	public void setSno(String sno) {
		this.sno = sno;
	}


	public String getSpwd() {
		return spwd;
	}


	public void setSpwd(String spwd) {
		this.spwd = spwd;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getSphone() {
		return sphone;
	}


	public void setSphone(String sphone) {
		this.sphone = sphone;
	}


	public String getsEmail() {
		return sEmail;
	}


	public void setsEmail(String sEmail) {
		this.sEmail = sEmail;
	}


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method st
		  HttpServletRequest request = (HttpServletRequest)ActionContext.getContext()  
                  .get(org.apache.struts2.StrutsStatics.HTTP_REQUEST); 
		request.setCharacterEncoding("utf-8");
		Connection conn=new myconn().getConn();
	    //  out.print(conn.toString());
	      String sql="insert into student_info values(?,?,?,?,?,?)";
	      PreparedStatement pstmt=conn.prepareStatement(sql);
	     // String str1=request.getParameter("sname");
	     // String str2=request.getParameter("sno");
	     // String str3=request.getParameter("spwd");
	     // String str4=request.getParameter("sex");
	     // String str5=request.getParameter("sphone");
	      //String str6=request.getParameter("sEmail");
	      pstmt.setString(1,sname);
	      pstmt.setString(2,sno);
	      pstmt.setString(3,spwd);
	      pstmt.setString(4,sex);
	      pstmt.setString(5,sphone);
	      pstmt.setString(6,sEmail);
	      int n=pstmt.executeUpdate();
	      if(n==1)
	      {
	    	  if(pstmt!=null) pstmt.close();
	          if(conn!=null) pstmt.close();
	    	  return "yes";
	      }
	      else 
	      {
	    	  if(pstmt!=null) pstmt.close();
	            if(conn!=null) pstmt.close();
	    	  return "no";
	         
	      }
		
		
	}
	

}
