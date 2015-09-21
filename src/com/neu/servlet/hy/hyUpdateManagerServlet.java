package com.neu.servlet.hy;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.neu.biz.hy.hyManagerInfoBiz;
/**
 * Servlet implementation class RegServlet
 * 修改管理员信息
 */
@WebServlet("/hyUpdateManagerServlet")
public class hyUpdateManagerServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hyUpdateManagerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		hyManagerInfoBiz biz=new hyManagerInfoBiz();
		HashMap<String, String> flag=biz.updateManager(request.getParameterMap());
		if(flag!=null){
			HttpSession session=request.getSession();
			Map<String, String[]> map=(Map<String, String[]>) session.getAttribute("mm");
			System.out.println("keys"+map.keySet());
			System.out.println("update:"+map.get("manager_name"));
			session.setAttribute("manager_info", flag);
			response.sendRedirect("updatemanager.jsp");
		}else{
			response.sendRedirect("upmanager_error.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
