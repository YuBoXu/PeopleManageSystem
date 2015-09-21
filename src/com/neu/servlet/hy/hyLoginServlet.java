package com.neu.servlet.hy;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.neu.biz.hy.hyManagerInfoBiz;

/**
 * Servlet implementation class hyLoginServlet
 * @param <SignInfoBiz>
 * ����Ա��¼
 */
@WebServlet("/hyLoginServlet")
public class hyLoginServlet<SignInfoBiz> extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hyLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		hyManagerInfoBiz biz=new hyManagerInfoBiz();
		HashMap<String, String> item=biz
				.checkLogin(request.getParameterMap());
		if(item!=null && item.size()>0){
			HttpSession session=request.getSession();
			session.setAttribute("info", item);
			response.sendRedirect("index.html");
			
		}else{
			//�ӷ����л�ȡ�洢���ݵĿռ�
		//	request.getRequestDispatcher("login.jsp").forward(request, response);
		//	RequestDispatcher.f
		//	response.("login_error.jsp");
			response.sendRedirect("login_error.jsp");
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
