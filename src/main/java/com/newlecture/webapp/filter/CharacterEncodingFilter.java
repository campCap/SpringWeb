package com.newlecture.webapp.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//System.out.println("헬러 필터"); // 서블릿 또는 이후 필터가 실행되기 전에 실행
		
		request.setCharacterEncoding("UTF-8");
		chain.doFilter(request, response); //필터도 실행되면서 다음 필터 다음 필터든 서블릿이든 실행되게 함. 이게없으면 이 필터만 실행하고 끝남
		
		//System.out.println("잘가 필터 그만좀 따라쳐라 제발");
	}

}
