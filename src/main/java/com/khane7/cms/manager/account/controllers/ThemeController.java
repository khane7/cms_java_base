package com.khane7.cms.manager.account.controllers;

import com.khane7.cms.Application;
import com.khane7.cms.manager.account.dao.DaoAccount;
import com.khane7.cms.manager.account.vo.BeanAccount;
import com.khane7.common.Utility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by khane7 on 2017-10-02.
 */
@Controller
public class ThemeController extends Application {


	@Autowired
	HttpServletRequest request;

	@Autowired
	DaoAccount daoAccount;

	@RequestMapping(value = "/cms_manager/account/setThemes" )
	@ResponseBody
	public Map<String, String> setThemes (@RequestParam Map params) {

		Map results = new HashMap();

		String user_id = this.getSSUser().getUser_id();
		if ( user_id != null && user_id.equals("") == false ) {
			params.put("user_id", user_id);
			daoAccount.setThemes(params);
		}

		return results;
	}



	@RequestMapping(value = "/cms_manager/account/getThemes" )
	@ResponseBody
	public Map getThemes (@RequestParam Map params) {

		Map results = new HashMap();

		String user_id = this.getSSUser().getUser_id();
		if ( user_id == null || user_id.equals("") == true ) {
			params.put("user_id", user_id);
			results = daoAccount.getThemes(user_id);
		}

		return results;
	}



}
