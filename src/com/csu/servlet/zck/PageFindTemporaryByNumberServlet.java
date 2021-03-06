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
 * Servlet implementation class PageFindTemporaryByNumberServlet
 * 通过编号查询试用期员工信息与岗位表关联信息
 */
@WebServlet("/PageFindTemporaryByNumberServlet")
public class PageFindTemporaryByNumberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageFindTemporaryByNumberServlet() {
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
		Map<String, String[]> map = 
				(Map<String, String[]>) request.getSession().getAttribute("map");
		EmpInfoBiz biz = new EmpInfoBiz();
		List<HashMap<String, String>> list=biz.findTemporaeyEmpInfo(map,page);
		request.getSession().setAttribute("map",map);
		request.getSession().setAttribute("pageindex", 1);
		request.getSession().setAttribute("emp_t", list);
		response.sendRedirect("showsyemp.jsp");
	}

}
