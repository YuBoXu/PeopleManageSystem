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

import com.csu.biz.zck.EmpInfoBiz;

/**
 * Servlet implementation class FindTemporaryByNumberServlet
 * 通过编号查询员工信息与岗位表关联信息
 */
@WebServlet("/FindTemporaryByNumberServlet")
public class FindTemporaryByNumberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindTemporaryByNumberServlet() {
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
		String number = request.getParameter("empnumber");
		EmpInfoBiz biz = new EmpInfoBiz();
		List<HashMap<String, String>> list = biz.findTemporaryInfoByNumber(number);
		Map<String, String> map = list.get(0);
		request.getSession().setAttribute("temporaryinfo", map);
		response.sendRedirect("syupdate.jsp");
	}

}
