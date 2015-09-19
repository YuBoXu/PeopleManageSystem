package com.csu.servlet.xyb;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.csu.biz.xyb.UserInfoBiz;

/**
 * Servlet implementation class ShowSignServlet
 */
@WebServlet("/ShowSignServlet")
public class ShowSignServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowSignServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String time=request.getParameter("time");
		UserInfoBiz biz=new UserInfoBiz();
		List<HashMap<String, String>> list=biz.findSignByTime(time);
		HttpSession session=request.getSession();
		session.setAttribute("signs", list);
		session.setAttribute("time",time );
		response.sendRedirect("adminCheck.jsp");
	}

}
