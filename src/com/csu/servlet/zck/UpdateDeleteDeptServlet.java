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

/**
 * Servlet implementation class UpdateDeleteDeptServlet
 * 更新删除部门后的信息表
 */
@WebServlet("/UpdateDeleteDeptServlet")
public class UpdateDeleteDeptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDeleteDeptServlet() {
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
		String deptnumber = request.getParameter("deptnumber");
		DeptBiz biz = new DeptBiz();
		List<HashMap<String, String>> list = biz.findRelationship(deptnumber);
		int row=0;
		if(list.isEmpty()){
		 row = biz.updateDeptInfo(deptnumber);
		response.getWriter().write(row);
		response.sendRedirect("delsec.html");
		
		}else {
			response.getWriter().write(row);
		}
	}

}
