package com.csu.servlet.zck;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csu.biz.zck.DeptBiz;
import com.csu.biz.zck.JobBiz;

/**
 * Servlet implementation class PageJobServlet
 * 分页查询岗位信息
 */
@WebServlet("/PageJobServlet")
public class PageJobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageJobServlet() {
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
		/*DeptBiz biz = new DeptBiz();
		List<HashMap<String, String>> list = biz.findDeptByPage(page);*/
		JobBiz biz = new JobBiz();
		List<HashMap<String, String>> list = biz.findJobByPage(page);		
		request.getSession().setAttribute("jobinfo", list);
		request.getSession().setAttribute("pageindex", page);
//		request.getSession().setAttribute("pagenumber", biz.getpagenumber());
		response.sendRedirect("jobselect.jsp");
	}

}
