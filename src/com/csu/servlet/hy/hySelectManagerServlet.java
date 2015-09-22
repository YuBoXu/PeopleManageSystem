package com.csu.servlet.hy;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.csu.biz.hy.hyManagerInfoBiz;

/**
 * Servlet implementation class FindPwdServlet
 * 查询管理员信息
 */
@WebServlet("/hySelectManagerServlet")
public class hySelectManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public hySelectManagerServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		hyManagerInfoBiz biz = new hyManagerInfoBiz();
		HttpSession session = request.getSession();
		session.setAttribute("signs",
				biz.findSignById(request.getParameterMap(), 1));
		//保存查询条件
		Map<String, String[]> mm=request.getParameterMap();
		Map<String, String[]> m=new HashMap<String, String[]>();
		m.putAll(mm);
		//System.out.println("select:"+mm.keySet());
		session.setAttribute("mm", m);
		System.out.println("select:"+request.getParameterMap().get("manager_name")[0]);
		session.setAttribute("pageIndex", "1");
		session.setAttribute("pageCount",
				biz.getPageCount(request.getParameterMap()));
		response.sendRedirect("selmanager.jsp");

	}

}

