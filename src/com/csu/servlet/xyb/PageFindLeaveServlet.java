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

import com.csu.biz.xyb.FindLeaveBiz;

/**
 * Servlet implementation class PageFindLeaveServlet
 * 离职员工信息分页
 */
@WebServlet("/PageFindLeaveServlet")
public class PageFindLeaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageFindLeaveServlet() {
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
		String page = request.getParameter("index");
		HttpSession session = request.getSession();
		Map<String, String[]> map =
				(Map<String, String[]>) session.getAttribute("leavemap");
		FindLeaveBiz biz=new FindLeaveBiz();
		List<HashMap<String, String>> item=
				biz.findLeaveByTime(map,page);
		session.setAttribute("pageindex", page);
		session.setAttribute("info", item);
		response.sendRedirect("leaveemplist.jsp");
	}

}
