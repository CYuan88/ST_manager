package Action;
import java.sql.Connection;


import java.sql.PreparedStatement;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import dao.myconn;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.opensymphony.xwork2.ActionSupport;

import com.opensymphony.xwork2.ActionSupport;

public class notice extends ActionSupport {
	private String atitle;
	private String atext;
	private String atime;
	public String getAtitle() {
		return atitle;
	}
	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}
	public String getAtext() {
		return atext;
	}
	public void setAtext(String atext) {
		this.atext = atext;
	}
	public String getAtime() {
		return atime;
	}
	public void setAtime(String atime) {
		this.atime = atime;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest)ActionContext.getContext()  
                .get(org.apache.struts2.StrutsStatics.HTTP_REQUEST); 
		request.setCharacterEncoding("utf-8");
		Connection conn=new myconn().getConn();
		String sql="insert into notice values(?,?,?)";
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1,atitle);
	    pstmt.setString(2,atext);
	    pstmt.setString(3,atime);
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
