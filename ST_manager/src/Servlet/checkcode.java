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

		response.reset();  //���buffer
		//����ҳ�治����
		response.setHeader("Pragma", "No-cache");  
        response.setHeader("Cache-Control", "no-cache");  
        response.setDateHeader("Expires", 0);  
        response.setContentType("image/gif");  
        Random rnd=new Random();
        int n=rnd.nextInt(9000)+1000;//����ҿ�����0-8999��+1000����ΪҪ��Ϊ��Ҫ��λ��
        String rndStr=String.valueOf(n);
        HttpSession session=request.getSession();
        session.setAttribute("vcode", rndStr);
		BufferedImage image = new BufferedImage(60, 20, BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics(); 
		int width=60;
		int height=20;
		//Graphics �ṩ�˶Լ�����״������ת������ɫ������ı����ָ�Ϊ���ӵĿ��ơ� 
		g.setColor(new Color(200,200,200));//������ɫ ��������
	    g.fillRect(0,0,width,height);//�������ɵ�ͼƬΪ������
        g.setColor(Color.black);//ǰ��ɫ
        // Font(String ���壬int ���int �ֺ�);
        //����������� lFont.PLAIN, Font.BOLD, Font.ITALIC
        g.setFont(new Font("����",Font.PLAIN,20));
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
