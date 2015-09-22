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
 * Servlet implementation class PageServlet
 * ·ÖÒ³
 * 
 */
@WebServlet("/hyPageServlet")
public class hyPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hyPageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String index=request.getParameter("index");
		HttpSession session=
				request.getSession();
		Map<String, String[]> managerMap=(Map<String, String[]>) session.getAttribute("managerMap");
		hyManagerInfoBiz biz=new hyManagerInfoBiz();
		List<HashMap<String, String>> map=
				biz.findSignById(managerMap,Integer.parseInt(index));
		
		session.setAttribute("pageIndex", index);
		session.setAttribute("signs", map);
		response.sendRedirect("selmanager.jsp");
	}

}

