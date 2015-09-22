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
 * Servlet implementation class FindLeaveServlet
 * 查找离职人员信息
 */
@WebServlet("/FindLeaveServlet")
public class FindLeaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindLeaveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map<String, String[]> map=request.getParameterMap();
		FindLeaveBiz biz=new FindLeaveBiz();
		List<HashMap<String, String>> item=
				biz.findLeaveByTime(map);
		HttpSession session=request.getSession();
		session.setAttribute("info", item);
		response.sendRedirect("leaveemplist.jsp");
	}

}
