package Action;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import dao.myconn;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.opensymphony.xwork2.ActionSupport;

public class grade extends ActionSupport {
	private String Cno;
	private String Sno;
	private String Score;
	public String getCno() {
		return Cno;
	}
	public void setCno(String cno) {
		Cno = cno;
	}
	public String getSno() {
		return Sno;
	}
	public void setSno(String sno) {
		Sno = sno;
	}
	public String getScore() {
		return Score;
	}
	public void setScore(String score) {
		Score = score;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest)ActionContext.getContext()  
                .get(org.apache.struts2.StrutsStatics.HTTP_REQUEST); 
		request.setCharacterEncoding("utf-8");
		Connection conn=new myconn().getConn();
		String sql="insert into grade values(?,?,?)";
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1,Cno);
	    pstmt.setString(2,Sno);
	    pstmt.setString(3,Score);
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
