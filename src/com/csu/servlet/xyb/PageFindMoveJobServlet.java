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

import com.csu.biz.xyb.MoveEmpBiz;

/**
 * Servlet implementation class PageFindMoveJobServlet
 * 岗位调动信息分页
 */
@WebServlet("/PageFindMoveJobServlet")
public class PageFindMoveJobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageFindMoveJobServlet() {
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
				(Map<String, String[]>) session.getAttribute("movejobmap");
		MoveEmpBiz biz=new MoveEmpBiz();
		List<HashMap<String, String>> item=
				biz.FindMoveJobByTime(map,page);
		session.setAttribute("info", item);
		session.setAttribute("pageindex", page);
		response.sendRedirect("movebmlist.jsp");
	}

}
