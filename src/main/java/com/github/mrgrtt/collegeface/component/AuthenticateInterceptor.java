package com.github.mrgrtt.collegeface.component;

import org.springframework.util.AntPathMatcher;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 登录认证拦截器
 */
public class AuthenticateInterceptor extends HandlerInterceptorAdapter {
    String[] requirePaths = { "/admin/**" };

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        AntPathMatcher antPathMatcher = new AntPathMatcher();
        for (String path: requirePaths) {
            if (antPathMatcher.match(path, request.getRequestURI())) {
                if (request.getSession().getAttribute(SessionKey.USER_ID.getKey()) == null) {
                    response.getWriter().println("未登录");
                    return  false;
                }
            }
        }
        return true;
    }
}
