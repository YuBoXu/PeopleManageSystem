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

import com.csu.biz.xyb.FindNewBiz;

/**
 * Servlet implementation class FindNewServlet
 * 查找新进人员信息
 */
@WebServlet("/FindNewServlet")
public class FindNewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindNewServlet() {
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
		FindNewBiz biz=new FindNewBiz();
		List<HashMap<String, String>> item=
				biz.findNewByTime(map,"1");
		HttpSession session=request.getSession();
		session.setAttribute("findnewmap", map);
		session.setAttribute("info", item);
		session.setAttribute("pageindex", 1);
		session.setAttribute("pagenumber", biz.getPageFindNewByTime(map));
		response.sendRedirect("newemplist.jsp");
	}

}
