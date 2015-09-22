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
 * Servlet implementation class FindTemporaryEmpServlet
 */
@WebServlet("/FindTemporaryEmpServlet")
public class FindTemporaryEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindTemporaryEmpServlet() {
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
		Map<String, String[]> map = request.getParameterMap();
		EmpInfoBiz biz = new EmpInfoBiz();
		List<HashMap<String, String>> list=biz.findTemporaeyEmpInfo(map,"1");
		request.getSession().setAttribute("map",map);
		request.getSession().setAttribute("pageindex", 1);
		request.getSession().setAttribute("pagenumber", biz.getEmppagenumber(map));
		request.getSession().setAttribute("emp_t", list);
		response.sendRedirect("showsyemp.jsp");
	}

}
