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
 * Servlet implementation class FindLeavingInfoServlet
 * 查询正在离职人员信息
 */
@WebServlet("/FindLeavingInfoServlet")
public class FindLeavingInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindLeavingInfoServlet() {
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
		String empnumber = request.getParameter("empnumber");
		StaffBiz biz = new StaffBiz();
		List<HashMap<String, String>> list = biz.findLeavingInfoByEmpNumber(empnumber);
		if(!list.isEmpty()){
			Map<String, String> map = list.get(0);
			request.getSession().setAttribute("empinfo", map);
			response.sendRedirect("information.jsp");
		}
	}

}
