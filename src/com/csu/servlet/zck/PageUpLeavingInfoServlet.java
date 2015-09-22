package com.csu.servlet.zck;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csu.biz.zck.StaffBiz;

/**
 * Servlet implementation class PageLeavingInfoServlet
 */
@WebServlet("/PageUpLeavingInfoServlet")
public class PageUpLeavingInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageUpLeavingInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("pagetext");
		int pageindex = Integer.parseInt(page);
		Map<String, String[]> map = 
				(Map<String, String[]>) request.getSession().getAttribute("leavingmap");
		StaffBiz biz = new StaffBiz();
		List<HashMap<String, String>> list = biz.findLeavingInfo(map,String.valueOf(pageindex-1));
		request.getSession().setAttribute("leavinginfo", list);
		request.getSession().setAttribute("pageindex", pageindex-1);
		response.sendRedirect("leavingInformation.jsp");
		
	}

}
