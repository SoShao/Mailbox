package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.User_infoService;
import service.Impl.User_infoServiceImpl;
import entity.User_info;

public class UserServlet extends HttpServlet {

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
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		out.flush();
		out.close();
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
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String opr=request.getParameter("opr");
		HttpSession session=request.getSession();
		
		
		User_infoService userService=new User_infoServiceImpl();
		if("login".equals(opr)){
			String userName=request.getParameter("userName");
			String password=request.getParameter("password");
			User_info user_info=userService.loginEmail(userName, password);
			boolean check=user_info!=null?true:false;
			session.setAttribute("user", user_info);
			out.print(check);
		}else if("regist".equals(opr)){
			String userName=request.getParameter("userName");
			String password=request.getParameter("password");
			User_info info=new User_info();
			info.setPassword(password);
			info.setUserName(userName);
			System.out.println();
			boolean flag=userService.checkUser_info(userName);
			System.out.println(flag);
			if(flag){
				/*request.setAttribute("error", "此用户已被注册");
				request.setAttribute("info", info);*/
				out.print("<script>alert('此用户已被注册!');history.back();</script>");
			}else{
				int count=userService.addUser(info);
				if(count==1){
					request.getRequestDispatcher("login.jsp").forward(request,
							response);
				}else{
					/*request.setAttribute("error", "注册失败,请稍后再试");*/
					out.print("<script>alert('注册失败,请稍后再试!');history.back();</script>");
				}
			}
		}
		out.flush();
		out.close();
	}

}
