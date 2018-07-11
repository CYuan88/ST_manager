package Action;
import com.opensymphony.xwork2.ActionSupport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.myconn;
import com.opensymphony.xwork2.ActionContext;


public class login extends ActionSupport {
    private String  userName;
    private String  userPwd;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		HttpServletRequest request = (HttpServletRequest)ActionContext.getContext()  
                .get(org.apache.struts2.StrutsStatics.HTTP_REQUEST); 
		HttpSession session=request.getSession();
		request.setCharacterEncoding("utf-8");
		Connection conn=new myconn().getConn();
        String sql="select spwd from student_info where sno="+userName;
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    
	    	ResultSet rs=pstmt.executeQuery(sql);
		      if(rs.next())
		      {
		    	  String pwd=rs.getString("spwd");
		    	  if(pwd.equals(userPwd))
		    	  {
		    		  session.setAttribute("studentno", userName);
		    		  if(rs!=null)rs.close();
		    		  if(pstmt!=null) pstmt.close();
			          if(conn!=null) pstmt.close();
			      
		    		  return "yes";
		    	  }
		    	  else
		    	  {
		    		  if(rs!=null)rs.close();
		    		  if(pstmt!=null) pstmt.close();
			          if(conn!=null) pstmt.close();
		    		  return "no";
		    	  }
		      }
		      else
		      {
		    	  if(rs!=null)rs.close();
	    		  if(pstmt!=null) pstmt.close();
		          if(conn!=null) pstmt.close();
		          return "no";
		      }
		}
	    
	    	}
	    
	
	    
    
    

