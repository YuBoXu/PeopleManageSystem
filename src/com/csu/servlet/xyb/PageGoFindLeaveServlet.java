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
 * Servlet implementation class PageGoFindLeaveServlet
 * 输入页数跳转到对应页
 */
@WebServlet("/PageGoFindLeaveServlet")
public class PageGoFindLeaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageGoFindLeaveServlet() {
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
		String page = request.getParameter("textfield3");
		HttpSession session=request.getSession();
		Map<String, String[]> map = 
				(Map<String, String[]>) session.getAttribute("moveempmap");
		MoveEmpBiz biz=new MoveEmpBiz();
		List<HashMap<String, String>> item=
				biz.FindMovedEmp(map,page);
		session.setAttribute("pageindex", page);
		session.setAttribute("info", item);
		response.sendRedirect("movedlist.jsp");
	}

}
