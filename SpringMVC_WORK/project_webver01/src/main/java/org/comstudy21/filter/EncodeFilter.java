package org.comstudy21.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class EncodeFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		// request(요청) 필터
		req.setCharacterEncoding("UTF-8");
		
		String reqUri = req.getRequestURI();
		//System.out.println(reqUri);
		String ctxPath = req.getContextPath();
		//System.out.println(ctxPath);
		int beginIndex = ctxPath.length();
		//System.out.println(beginIndex);
		String path = reqUri.substring(beginIndex);
		//System.out.println(path);
		String path2 = "/";
		if(path.indexOf("/", 1) != -1) {
			path2 = path.substring(0, path.indexOf("/", 1));	
			System.out.println(path2);
		}
		String filePath = path.substring(path.lastIndexOf("/"));
		
		req.setAttribute("path", path);
		req.setAttribute("path2", path2);
		req.setAttribute("filePath", filePath);
		
		///////////////////////////////////////////
		chain.doFilter(req, resp);
		///////////////////////////////////////////
		
		// response(결과)  필터
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
	}

}
