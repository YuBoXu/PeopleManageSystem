package com.neu.servlet.hy;


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

import com.neu.biz.hy.hyManagerInfoBiz;

/**
 * Servlet implementation class DeleteServlet
 * …æ≥˝π‹¿Ì‘±
 */
@WebServlet("/hyDeleteManagerServlet")
public class hyDeleteManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hyDeleteManagerServlet() {
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
		boolean flag=biz
				.doDeleteManager(request.getParameterMap());
		if(flag){
			HttpSession session=request.getSession();
			String pageIndex=(String) session.getAttribute("pageIndex");
			List<HashMap<String, String>> list=
					biz.findSignById((Map<String,String[]>)session.getAttribute("mm"), Integer.parseInt(pageIndex));
			
			session.setAttribute("signs", list);
			
			response.sendRedirect("del_manager_success.jsp");
		}else{
			response.sendRedirect("del_manager_error.jsp");
		}
	}

}

