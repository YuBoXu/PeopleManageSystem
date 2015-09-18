package com.csu.servlet.zck;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csu.dao.zck.DeptDao;

/**
 * Servlet implementation class AddDeptServlet
 */
@WebServlet("/AddDeptServlet")
public class AddDeptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDeptServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map<String, String[]> map = request.getParameterMap();
		String deptname= map.get("deptname")[0];
		String type = map.get("select")[0];
		String phone = map.get("tele")[0];
		String fax = map.get("fax")[0];
		String describ = map.get("discrip")[0];
		String sueper = map.get("super")[0];
		String date = map.get("createtime")[0];
		DeptDao dao = new DeptDao();
		dao.addDept(deptname, type, phone, fax, describ,sueper, date);
		response.sendRedirect("sec.html");
	
	}

}
