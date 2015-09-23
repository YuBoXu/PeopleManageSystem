package com.csu.servlet.zck;

import java.io.IOException;
import java.util.Arrays;
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
 * Servlet implementation class JobSelectAllUnSelectAllServlet
 * 全选和反选
 * 
 */
@WebServlet("/JobSelectAllUnSelectAllServlet")
public class JobSelectAllUnSelectAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JobSelectAllUnSelectAllServlet() {
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
		/*for(String s : select){
			System.out.println(s);
		}*/
		if (select==null || (select!=null && select.length==0) ){
			response.sendRedirect("jobselect.jsp");
		} else {
			String jobnumbet = Arrays.toString(select).replace("[", "(").replace("]", ")");
			JobBiz biz = new JobBiz();
			List<HashMap<String, String>> list=	biz.findDropJobInfo(jobnumbet);
			request.getSession().setAttribute("dropinfo", list);
			response.sendRedirect("jobdelete.jsp");
		}
		
	
		
	}

}
