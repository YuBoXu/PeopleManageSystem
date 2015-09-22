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
 * Servlet implementation class FindLeavingOperateServlet
 */
@WebServlet("/FindLeavingOperateServlet")
public class FindLeavingOperateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindLeavingOperateServlet() {
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
		StaffBiz biz = new StaffBiz();
		List<HashMap<String, String>> list = biz.findLeavingInfo(map,"1");
		request.getSession().setAttribute("leavingmap", map);
		request.getSession().setAttribute("leavinginfo", list);
		request.getSession().setAttribute("pageindex", 1);
		request.getSession().setAttribute("pagenumber", biz.getPageLeavingInfo(map));
		response.sendRedirect("leavingInformation.jsp");
	}

}
