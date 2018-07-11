package Action;
import java.sql.Connection;


import java.sql.PreparedStatement;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import dao.myconn;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.opensymphony.xwork2.ActionSupport;

public class homework extends ActionSupport {
	private String hno;
	private String stime;
	private String dtime;
	private String htext;
	public String getHno() {
		return hno;
	}
	public void setHno(String hno) {
		this.hno = hno;
	}
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
	public String getDtime() {
		return dtime;
	}
	public void setDtime(String dtime) {
		this.dtime = dtime;
	}
	public String getHtext() {
		return htext;
	}
	public void setHtext(String htext) {
		this.htext = htext;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest)ActionContext.getContext()  
                .get(org.apache.struts2.StrutsStatics.HTTP_REQUEST); 
		request.setCharacterEncoding("utf-8");
		Connection conn=new myconn().getConn();
		String sql="insert into exercise values(?,?,?,?)";
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1,hno);
	    pstmt.setString(2,stime);
	    pstmt.setString(3,dtime);
	    pstmt.setString(4,htext);
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
