package com.csu.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class CheckUserFilter
 */
@WebFilter("/*")
public class CheckUserFilter implements Filter {

    /**
     * Default constructor. 
     */
    public CheckUserFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse rsp = (HttpServletResponse) response;
		/*String uri = req.getRequestURI();
		if (uri.indexOf("hyLoginServlet")>=0||uri.indexOf("login.jsp")>=0||
				uri.indexOf("login_error.jsp")>=0) {
			chain.doFilter(request, response);
			
		}else{
			HttpSession session = req.getSession();
			Object obj = session.getAttribute("info");
			if (obj==null) {
				rsp.sendRedirect("login.jsp");
				return;
			}
		}*/
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
