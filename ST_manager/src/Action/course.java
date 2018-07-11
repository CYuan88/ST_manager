package Action;
import java.sql.Connection;


import java.sql.PreparedStatement;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import dao.myconn;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class course extends ActionSupport {
	private String cno;
	private String cname;
	private String credit;
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCredit() {
		return credit;
	}
	public void setCredit(String credit) {
		this.credit = credit;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest)ActionContext.getContext()  
                .get(org.apache.struts2.StrutsStatics.HTTP_REQUEST); 
		request.setCharacterEncoding("utf-8");
		Connection conn=new myconn().getConn();
		String sql="insert into course values(?,?,?)";
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1,cno);
	    pstmt.setString(2,cname);
	    pstmt.setString(3,credit);
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
