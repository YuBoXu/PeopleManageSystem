package com.csu.servlet.hy;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.csu.biz.hy.hyManagerInfoBiz;

/**
 * Servlet implementation class FindPwdServlet
 * ÍË³öÏµÍ³
 */
@WebServlet("/hyOutServlet")
public class hyOutServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hyOutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		hyManagerInfoBiz biz=new hyManagerInfoBiz();
//		boolean flag=biz
//					.selectManager(request.getParameterMap());
		
			HttpSession session=request.getSession();
			session.invalidate();
			response.sendRedirect("login.jsp");
//			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		
		}


}
