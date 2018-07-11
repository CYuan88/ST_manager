package Action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.myconn;

public class Tlogin extends ActionSupport {
	private String  Tno;
    private String  Tpwd;
	public String getTno() {
		return Tno;
	}
	public void setTno(String tno) {
		Tno = tno;
	}
	public String getTpwd() {
		return Tpwd;
	}
	public void setTpwd(String tpwd) {
		Tpwd = tpwd;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		HttpServletRequest request = (HttpServletRequest)ActionContext.getContext()  
                .get(org.apache.struts2.StrutsStatics.HTTP_REQUEST); 
		HttpSession session=request.getSession();
		request.setCharacterEncoding("utf-8");
		Connection conn=new myconn().getConn();
        String sql="select tpwd from teacher_info where tno="+Tno;
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	   
	
	    ResultSet rs=pstmt.executeQuery(sql);
	      if(rs.next())
	      {
	    	  String pwd=rs.getString("tpwd");
	    	  if(pwd.equals(Tpwd))
	    	  {
	    		  session.setAttribute("teacherno", Tno);
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
