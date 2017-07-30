package com.khane7.cms.Controllers.manager;

import com.khane7.cms.Dao.DaoLog;
import org.springframework.stereotype.Service;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/**
 * Created by khane7 on 2017. 2. 13..
 */
@Service
public class AccessLogFilter implements Filter {


	DaoLog daoLog;


	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		long start_time = System.currentTimeMillis();

		//request에서 각정보를 구함.
		String request_uri = request.getRequestURI() == null ? "" : request.getRequestURI();
		String query_string = request.getQueryString() == null ? "" : request.getQueryString();
		String remote_address = request.getRemoteAddr() == null ? "" : request.getRemoteAddr();
		String server_name = request.getServerName() == null ? "" : request.getServerName();
		int server_port = request.getServerPort();
		Locale locale = request.getLocale();
		String browser = request.getHeader("User-Agent") == null ? "" : request.getHeader("User-Agent");
		String referer = (request.getHeader("referer") == null) ? "" : request.getHeader("referer");
		//세션을 구한다.
		HttpSession session = request.getSession();
		String session_id = session.getId();
		//사용자 아이디를 구한다.
		String user_id = (session.getAttribute("user_id") == null) ? "" : (String) session.getAttribute("user_id");

		//응답을 보낸다.
		chain.doFilter(req, res);

		long stop_time = System.currentTimeMillis();
		long response_time = stop_time - start_time;


		// LOG INSERT
		Map params = new HashMap();
		params.put("request_uri", request_uri);
		params.put("query_string", query_string);
		params.put("remote_address", remote_address);
		params.put("server_name", server_name);
		params.put("server_port", server_port + "");
		params.put("locale", locale + "");
		params.put("browser", browser);
		params.put("referer", referer);
		params.put("session_id", session_id);
		params.put("user_id", user_id);
		params.put("response_time", response_time + "");

		daoLog.insert_log(params);


		//DB에 하나의 요청에 대해 정보를 insert 한다.
		/*DatabaseHandler dh = new DatabaseHandler("jdbc/dbtool");
		StringBuffer sb = new StringBuffer();
		sb.append("insert into dbtool_access_log \n");
		sb.append("(request_uri,query_string,remote_address,server_name,server_port,locale,browser");
		sb.append(",referer,session_id,user_id,response_time,reg_date) \n");
		sb.append("values (?,?,?,?,?,?,?,?,?,?,?,now()) \n");
		String sql = sb.toString();
		ArrayList params = new ArrayList();
		params.add(request_uri);
		params.add(query_string);
		params.add(remote_address);
		params.add(server_name);
		params.add(server_port + "");
		params.add(locale + "");
		params.add(browser);
		params.add(referer);
		params.add(session_id);
		params.add(user_id);
		params.add(response_time + "");
		dh.update(sql, params);*/

		System.out.println(params);
		System.out.println("access_log insert 완료:" + (System.currentTimeMillis() - start_time) + "(msec)");
	}

	public void init(FilterConfig filterConfig) {

		WebApplicationContext springContext = WebApplicationContextUtils.getWebApplicationContext(filterConfig.getServletContext());
		daoLog = springContext.getBean(DaoLog.class);

	}

	public void destroy() {
		daoLog = null;
	}


}
