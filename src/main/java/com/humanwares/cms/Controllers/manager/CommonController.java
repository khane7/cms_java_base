package com.humanwares.cms.Controllers.manager;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by khane7 on 2016-02-20.
 */
@Controller
@RequestMapping( value = "/common")
public class CommonController {


	@RequestMapping(value = "/error-404")
	public String error404 ( Map<String, String> map, ModelMap model, HttpSession httpSession) {

		return "cms_manager/error/404";
	}


	@RequestMapping(value = "/error-500")
	public String error500 ( Map<String, String> map, ModelMap model, HttpSession httpSession) {

		return "cms_manager/error/500";
	}

}
