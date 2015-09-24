package com.csu.servlet.zck;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.csu.biz.zck.WriteInfoBiz;

/**
 * Servlet implementation class WriteInfoServlet
 */
@WebServlet("/WriteInfoServlet")
public class WriteInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WriteInfoServlet() {
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
		WriteInfoBiz biz = new WriteInfoBiz();
		HttpSession session = request.getSession();
		List<HashMap<String, String>> deptlist = biz.findDept();
		List<HashMap<String, String>> joblist = biz.findJob();
		session.setAttribute("deptlist", deptlist);
		session.setAttribute("joblist", joblist);
		response.sendRedirect("writeinfo.jsp");
	}

}
