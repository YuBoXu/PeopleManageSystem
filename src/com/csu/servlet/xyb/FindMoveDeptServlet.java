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
 * Servlet implementation class MoveDeptServlet
 */
@WebServlet("/FindMoveDeptServlet")
public class FindMoveDeptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindMoveDeptServlet() {
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
		MoveEmpBiz biz=new MoveEmpBiz();
		List<HashMap<String, String>> item=
				biz.FindMoveDeptByTime(map);
		HttpSession session=request.getSession();
		session.setAttribute("info", item);
		response.sendRedirect("movedeptlist.jsp");
	}

}
