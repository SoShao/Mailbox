package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.MessageService;
import service.TranService;
import service.User_infoService;
import service.Impl.MessageServiceImpl;
import service.Impl.TranServiceImpls;
import service.Impl.User_infoServiceImpl;
import util.PageInfo;

import com.alibaba.fastjson.JSON;

import entity.Message;

public class MessageServlet extends HttpServlet {

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
		TranService tranService=new TranServiceImpls();
		HttpSession session=request.getSession();
         User_infoService user_info=new User_infoServiceImpl();
		MessageService messageService=new MessageServiceImpl();
		if("getData".equals(opr)){
			String cname=request.getParameter("cname");
			String currPageNo=request.getParameter("currPageNo");
			int pageNo=1;
			if(currPageNo!=null){
				pageNo=Integer.parseInt(currPageNo);
			}
			PageInfo pageInfo=messageService.pageInfo(cname, null, pageNo, 5);
			String jsonString = JSON.toJSONString(pageInfo, true);
			System.out.println(jsonString);

			session.setAttribute("totalCount", pageInfo.getTotalCount());
			out.print(jsonString);
		}else if("add".equals(opr)){
			String cname=request.getParameter("cname");
			String bname=request.getParameter("bname");
			String rname=request.getParameter("rname");
			int cnameid =Integer.parseInt(request.getParameter("cnameid"));
			int bnameid=Integer.parseInt(request.getParameter("bnameid"));
			int rnameid=Integer.parseInt(request.getParameter("rnameid"));
			String caption=request.getParameter("caption");
			String conText=request.getParameter("conText");
			String[] cnames = cname.split(";");
			String[] bnames = bname.split(";");
			String[] rnames = rname.split(";");
			String gname=request.getParameter("gname");
			List<Message>list=new ArrayList<Message>();
            List<String[]>userName=new ArrayList<String[]>();
			if(cnameid!=0){
				
				for (int i = 0; i < cnames.length; i++) {
				   if(user_info.checkUser_info(cnames[i])){
					   Message message=new Message();
						message.setBlind(cnameid);
						message.setCaption(caption);
						message.setCollect(0);
						message.setDelid(0);
						message.setState(0);
						message.setRname(gname);
						message.setCname(cnames[i]);
						message.setConText(conText);
						list.add(message);
						
				   }else{
					  userName.add(cnames);
				   }
					
				
				}
			}
			if(bnameid!=0){
				for (int i = 0; i < bnames.length; i++) {
					if(user_info.checkUser_info(bnames[i])){
						Message message=new Message();
						message.setBlind(bnameid);
						message.setCaption(caption);
						message.setCollect(0);
						message.setDelid(0);
						message.setState(0);
						message.setRname(gname);
						message.setCname(bnames[i]);
						message.setConText(conText);
						list.add(message);	
					}else{
						  userName.add(bnames);
					}
				
			
				}
			}
			if(rnameid==0){

				for (int i = 0; i < rnames.length; i++) {

					if(user_info.checkUser_info(rnames[i])){
						Message message=new Message();
						message.setBlind(rnameid);
						message.setCaption(caption);
						message.setCollect(0);
						message.setDelid(0);
						message.setState(0);
						message.setRname(gname);
						message.setCname(rnames[i]);
						message.setConText(conText);
						list.add(message);
					}else{
						userName.add(rnames);
					}
					
				}
			}
			 boolean falg=tranService.addMsg(list);
			 if(falg){
				 out.print(falg);
			 }else{
					String jsonString = JSON.toJSONString(userName, true);
				 out.print(jsonString);
			 }
		}else if("getmsg".equals(opr)){
      
		}
		out.flush();
		out.close();
	}

}
