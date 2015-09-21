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
 * Servlet implementation class FindEmpByIdcardServlet
 */
@WebServlet("/FindEmpByIdcardServlet")
public class FindEmpByIdcardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindEmpByIdcardServlet() {
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
		String id= request.getParameter("id");
		EmpInfoBiz biz = new EmpInfoBiz();
		List<HashMap<String, String>> list = biz.findEmpByIdCard(id);
		Map<String, String> map = list.get(0);
		request.getSession().setAttribute("empinfo", map);
		String number = map.get("emp_number");
		List<HashMap<String, String>> rlist = biz.findRlationByNumber(number);
		Map<String, String> rmap = rlist.get(0);
		request.getSession().setAttribute("ralationinfo", rmap);
		List<HashMap<String, String>> olist = biz.findOccupationByNumber(number);
		Map<String, String> omap = list.get(0);
		request.getSession().setAttribute("occupationinfo", omap);
//		System.out.println(list.toString()+id+map.toString());
		response.sendRedirect("rck.jsp");
	}

}
