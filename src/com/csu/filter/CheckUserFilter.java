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
		//String uri = req.getRequestURI();
		//得到用户请求的URI
		String request_uri = req.getRequestURI();
		// 得到web应用程序的上下文路径
		String ctxPath = req.getContextPath();
		// 去除上下文路径，得到剩余部分的路径
		String uri = request_uri.substring(ctxPath.length());
		if (uri.indexOf("/hyLoginServlet")>=0||uri.indexOf("/login.jsp")>=0||
				uri.indexOf("/login_error.jsp")>=0||uri.indexOf("/*.html")>=0
						||uri.indexOf("/91.jpg")>=0||uri.indexOf("/password.gif")>=0
								||uri.indexOf("/user.gif")>=0
				||uri.indexOf("/*.js")>=0||uri.indexOf("/*.css")>=0||uri.indexOf("/*.jpg")>=0
				||uri.indexOf("/*.gif")>=0||uri.indexOf("/*.swf")>=0||uri.indexOf("/*.png")>=0) {//||uri.indexOf("index.html")>=0
			chain.doFilter(request, response);	
			 return;
		}else{
			HttpSession session = req.getSession();
			Object obj = session.getAttribute("info");
			if (obj==null) {
			//	rsp.sendRedirect("login_error.jsp");
				rsp.sendRedirect("login.jsp");
				return;
			}else {
				chain.doFilter(request, response);
			}
		}
	//	chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}

/*
//得到用户请求的URI
String request_uri = req.getRequestURI();
// 得到web应用程序的上下文路径
String ctxPath = req.getContextPath();
// 去除上下文路径，得到剩余部分的路径
String uri = request_uri.substring(ctxPath.length());
// 判断用户访问的是否是登录页面*/