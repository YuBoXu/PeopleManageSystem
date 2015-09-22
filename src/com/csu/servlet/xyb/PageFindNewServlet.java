package com.csu.servlet.xyb;

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

import com.csu.biz.xyb.FindNewBiz;
import com.sun.xml.internal.ws.developer.StreamingAttachment;

/**
 * Servlet implementation class PageFindNewServlet
 */
@WebServlet("/PageFindNewServlet")
public class PageFindNewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageFindNewServlet() {
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
		HttpSession session = request.getSession();
		String page = request.getParameter("index");
		Map<String, String[]> map=
				(Map<String, String[]>) session.getAttribute("findnewmap");
		FindNewBiz biz=new FindNewBiz();
		List<HashMap<String, String>> item=
				biz.findNewByTime(map,page);
		session.setAttribute("info", item);
		session.setAttribute("pageindex", page);
		response.sendRedirect("newemplist.jsp");
		
	}

}
