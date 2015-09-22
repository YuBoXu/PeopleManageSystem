package com.csu.servlet.zck;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeptSelectAllUNSelectAllServlet
 * 全选和反选的删除
 */
@WebServlet("/DeptSelectAllUnSelectAllServlet")
public class DeptSelectAllUnSelectAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeptSelectAllUnSelectAllServlet() {
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
		String[] select = request.getParameterValues("delid");
		String temp=Arrays.toString(select).replace("[", "(").replace("]", ")");
		System.out.println(temp);
//		[12,34,87,45]
//		(12,34,87,45)
//		delete from user_info where user_id in (12,34,87,45);
		for(String s:select){
			System.out.println(s);
		}
		//	response.sendRedirect("multidel.html");
	}

}
