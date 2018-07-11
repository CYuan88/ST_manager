package Servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class checkcode extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public checkcode() {
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

		doPost(request, response);
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

		response.reset();  //清空buffer
		//设置页面不缓存
		response.setHeader("Pragma", "No-cache");  
        response.setHeader("Cache-Control", "no-cache");  
        response.setDateHeader("Expires", 0);  
        response.setContentType("image/gif");  
        Random rnd=new Random();
        int n=rnd.nextInt(9000)+1000;//左闭右开区间0-8999，+1000是因为要因为需要四位数
        String rndStr=String.valueOf(n);
        HttpSession session=request.getSession();
        session.setAttribute("vcode", rndStr);
		BufferedImage image = new BufferedImage(60, 20, BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics(); 
		int width=60;
		int height=20;
		//Graphics 提供了对几何形状、坐标转换、颜色管理和文本布局更为复杂的控制。 
		g.setColor(new Color(200,200,200));//设置颜色 （背景）
	    g.fillRect(0,0,width,height);//设置生成的图片为长方形
        g.setColor(Color.black);//前景色
        // Font(String 字体，int 风格，int 字号);
        //风格：三个常量 lFont.PLAIN, Font.BOLD, Font.ITALIC
        g.setFont(new Font("宋体",Font.PLAIN,20));
        g.drawString(rndStr, 5, 17);
        for (int i = 0; i < 100; i++){	
        	   int x = rnd.nextInt(width); 
        	   int y = rnd.nextInt(height); 
        	   g.drawOval(x, y, 1, 1); 
        }
        final java.io.OutputStream out = response.getOutputStream();  
        ImageIO.write(image, "PNG", out);
		out.flush();
		out.close();
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
