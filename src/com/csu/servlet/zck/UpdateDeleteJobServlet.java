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
 * Servlet implementation class UpdateDeleteJobServlet
 * 更新删除岗位后的信息表
 */
@WebServlet("/UpdateDeleteJobServlet")
public class UpdateDeleteJobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDeleteJobServlet() {
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
		String jobnumber = request.getParameter("jobnumber");
		JobBiz biz = new JobBiz();
		List<HashMap<String, String>> list = biz.findJobByRelationship(jobnumber);
		if(list.isEmpty()){
		biz.updateJonInfo(jobnumber);
		response.sendRedirect("delsec.html");
		}
	}

}
