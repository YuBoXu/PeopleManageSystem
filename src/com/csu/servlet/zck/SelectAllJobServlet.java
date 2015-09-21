package com.csu.servlet.zck;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csu.biz.zck.JobBiz;


/**
 * Servlet implementation class SelectAllJobServlet
 */
@WebServlet("/SelectAllJobServlet")
public class SelectAllJobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectAllJobServlet() {
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
		JobBiz biz = new JobBiz();
		List<HashMap<String, String>> list = biz.findJobByPage("1");
		request.getSession().setAttribute("jobinfo", list);
		request.getSession().setAttribute("pageindex", 1);
		request.getSession().setAttribute("pagenumber", biz.getpagenumber());
		response.sendRedirect("jobselect.jsp");
	}

}
