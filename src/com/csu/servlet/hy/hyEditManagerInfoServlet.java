package com.csu.servlet.hy;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.csu.biz.hy.hyManagerInfoBiz;

/**
 * Servlet implementation class hyEditManagerInfoServlet
 * 对管理员信息进行编辑
 */
@WebServlet("/hyEditManagerInfoServlet")
public class hyEditManagerInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hyEditManagerInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		hyManagerInfoBiz biz=new hyManagerInfoBiz();
		boolean flag=biz.editManagerInfo(request.getParameterMap());
		if(flag){
			HttpSession session=request.getSession();
			String pageIndex=(String) session.getAttribute("pageIndex");
			Map<String,String[]> m=(Map<String,String[]>)session.getAttribute("mm");
			List<HashMap<String, String>> list=
					biz.findSignById(m, Integer.parseInt(pageIndex));
			System.out.println("edit:"+list);
			session.setAttribute("signs", list);
			
			response.sendRedirect("upmanager_success.jsp");
		}else{
			response.sendRedirect("upmanager_error.jsp");
		}
	}

}
