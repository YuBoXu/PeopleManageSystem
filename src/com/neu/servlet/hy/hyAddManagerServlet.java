package com.neu.servlet.hy;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.neu.biz.hy.hyManagerInfoBiz;

/**
 * Servlet implementation class RegServlet
 * 添加管理员
 * 
 */
@WebServlet("/hyAddManagerServlet")
public class hyAddManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hyAddManagerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		hyManagerInfoBiz biz=new hyManagerInfoBiz();
		Map<String,String[]> map=
				request.getParameterMap();
		boolean flag=biz.doSave(map);
		if(flag){
			response.sendRedirect("addmanager_success.jsp");
		}else{
			response.sendRedirect("addmanager_error.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
