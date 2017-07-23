package com.humanwares.cms.Common;

import com.humanwares.cms.Beans.BeanUsers;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;


public class Interceptor extends HandlerInterceptorAdapter {

	public boolean preHandle ( HttpServletRequest request, HttpServletResponse response, Object handler ) {

		boolean isPossible = false;

		try {

			System.out.printf(request.getRemoteAddr());


			/**
			 *
			 김미송 : 166.104.74.142
			 김유미 : 166.104.74.143
			 오상분 : 166.104.74.144
			 김장곤 : 166.104.74.145
			 조성대 : 166.104.74.155
			 조교PC : 166.104.74.156
			 이준근 : 166.104.74.157
			 정지혜 : 166.104.74.159
			 관리자 IP1: 166.104.103.197
			 관리자 IP2: 166.104.103.198

			 주하나 : 166.104.128.51

			 */
			List<String> listIP = new ArrayList<String>();
			listIP.add("127.0.0.1");
			listIP.add("192.168.0.");
			listIP.add("0:0:0:0:0:0:0:1");
			listIP.add("218.50.162.111");
			listIP.add("106.247.29.154");

			listIP.add("166.104.74.142");
			listIP.add("166.104.74.143");
			listIP.add("166.104.74.144");
			listIP.add("166.104.74.145");
			listIP.add("166.104.74.155");
			listIP.add("166.104.74.156");
			listIP.add("166.104.74.157");
			listIP.add("166.104.74.159");

			// 2017-03-02 추가
			listIP.add("166.104.128.51");
			listIP.add("166.104.128.54");

			listIP.add("166.104.103.197");
			listIP.add("166.104.103.198");

			//2017-03-31 추가
			listIP.add("166.104.128.52");
			//2017-05-16 추가
			listIP.add("166.104.128.54");
			//2017-06-27 추가
			listIP.add("166.104.128.197");


			loopIP : for ( String item : listIP ) {
				if ( item.equals( request.getRemoteAddr() ) == true ) {
					isPossible = true;
					break;
				}
				if ( (request.getRemoteAddr()).indexOf(item) > -1) {
					isPossible = true;
					break;
				}
			}

			if ( isPossible == false ) {
				System.out.println("ip block");
				response.sendRedirect( request.getContextPath() + "/cms_manager/doLogout");
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return isPossible;
	}


	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

		try {

			System.out.printf(request.getRemoteAddr());

			BeanUsers beanUsers = (BeanUsers) request.getSession().getAttribute("session_user");

			if(beanUsers == null || beanUsers.getLevel() <= 90 ) {
				response.sendRedirect( request.getContextPath() + "/cms_manager/doLogout");
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		super.postHandle(request, response, handler, modelAndView);
	}
}
