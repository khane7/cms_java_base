package com.humanwares.cms;

import com.humanwares.cms.Beans.BeanUsers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

import javax.servlet.http.HttpSession;

/**
 * Created by khane7 on 2016-02-15.
 */
@Controller
public class Application {

	@Autowired
	public HttpSession session;

	public static final String MANAGER = "cms_manager";
	public static final String MANAGER_URL = "/" + MANAGER;


	public static final String FRONT = "";


	public static String error404 = "cms_manager/error/404";
	public static String error500 = "cms_manager/error/500";

	public static String redirectError404 = "redirect:/common/error-404";
	public static String redirectError500 = "redirect:/common/error-500";


	public Map<String, Object> results;


	public BeanUsers getSSUser () {
		return (BeanUsers) session.getAttribute("session_user");
	}


	private String Inputstream2String ( InputStream inputStream) {
		StringBuffer sb = new StringBuffer();
		byte[] b = new byte[4096];
		try {
			for (int n; (n = inputStream.read(b)) != -1;) {
				sb.append(new String(b, 0, n));
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		sb.toString();

		return sb.toString();
	}



	public String getPathPage ( HttpSession httpSession) {
		return httpSession.getServletContext().getRealPath("WEB-INF/pages");
	}

	public String getPathResource ( HttpSession httpSession) {
		return httpSession.getServletContext().getRealPath(File.separator) + "/resources";
	}

	public String getPathSkin ( HttpSession httpSession) {
		return httpSession.getServletContext().getRealPath("WEB-INF/pages/front/skin");
	}


}
