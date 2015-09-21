package com.csu.servlet.xyq;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csu.biz.xyq.YgxxBiz;

/**
 * Servlet implementation class YgxxServlet
 */
@WebServlet("/YgxxServlet")
public class YgxxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public YgxxServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		YgxxBiz biz=new YgxxBiz();
		List <HashMap<String,String>> list=biz.find(request.getParameterMap());
		if (!list.isEmpty()){
			Map<String,String> map = list.get(0);
			request.getSession().setAttribute("ygxx", map);
			response.sendRedirect("ygxx.jsp");
		}
		
		
		
		
	}

}
