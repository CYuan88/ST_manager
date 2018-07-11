package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class logcheck extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public logcheck() {
		super();
	}

	/**
		 * Destruction of the servlet. <br>
		 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
		 * The doGet method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to get.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		String vcode= request.getSession().getAttribute("vcode").toString();//得到系统生成的保存再会话中的验证码
		String writeYzm = request.getParameter("aa").toString();//得到用户填写的验证码
//		System.out.println(vcode+"*******************************************************************"+writeYzm);
		HttpSession session = request.getSession();
		if(writeYzm.equals(vcode)){
			out.print("t");
			session.setAttribute("vcodeCheck", true);
			}else {
			out.print("f");
			session.setAttribute("vcodeCheck", false);
			}
	}

	/**
		 * The doPost method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to post.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		   doGet(request, response);
		//request.setCharacterEncoding("utf-8");
		//String usercheckcode=request.getParameter("aa");
       // PrintWriter out=response.getWriter();
       // HttpSession session=request.getSession();
		//String servercheckcode=(String)session.getAttribute("checkCode");
		/*if(!servercheckcode.equalsIgnoreCase(usercheckcode)){
		  out.print("验证码不正确");
			//System.out.print("验证码不正确");
			
			
		}
		
		else
		{
			out.print("");
		}
		if(servercheckcode.equals(usercheckcode))
		{
			out.print("");
		}
		else
		{
			out.print("Wrong");
		}*/
	}

	/**
		 * Initialization of the servlet. <br>
		 *
		 * @throws ServletException if an error occurs
		 */
	public void init() throws ServletException {
		// Put your code here
	}

}
