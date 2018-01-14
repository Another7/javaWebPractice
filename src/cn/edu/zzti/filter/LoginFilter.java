package cn.edu.zzti.filter;

import cn.edu.zzti.util.PathConstence;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class LoginFilter
 */
public class LoginFilter implements Filter {
	private String[] pathList;
	public void destroy() {}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest hreq  = (HttpServletRequest)request;
		HttpServletResponse hresp = (HttpServletResponse)response;
		String requestPath = hreq.getServletPath();
		HttpSession session = hreq.getSession();
		System.out.println("requestPath:"+requestPath);
		if(containsPath(requestPath)){
			chain.doFilter(request, response);
		}else if(session.getAttribute("user")==null){
			if (requestPath.indexOf("web")>-1){
				hresp.sendRedirect(hreq.getContextPath()+ PathConstence.JSP_WEB_BASE+"/login.jsp");
			}else{
				hresp.sendRedirect(hreq.getContextPath()+PathConstence.JSP_MANAGE_BASE+"/login.jsp");
			}
		}else{
			chain.doFilter(request, response);
		}
	}
	public void init(FilterConfig fConfig) throws ServletException {
		//获取要放行的路径列表
		String values = fConfig.getInitParameter("paths");
		System.out.println("InitParameters:"+values);
	    pathList = values.split(",");
	}
	public  boolean containsPath(String path){
		for(String p:pathList){
			if(p.equals(path)){
				return true;
			}
		}
		return false;
	}
}
