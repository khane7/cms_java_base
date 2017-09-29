package com.khane7.cms;

import com.khane7.cms.manager.board_manager.dao.DaoBBS;
import com.khane7.cms.manager.display.dao.DaoDisplay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	DaoBBS daoBBS;

	@Autowired
	DaoDisplay daoDisplay;

	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Hello world!");
		model.addAttribute("popupList", daoDisplay.getPopupList());
		model.addAttribute("bannerList", daoDisplay.getBannerList());
		return "front/html/index";
	}


	@RequestMapping(value = "/html/{path}/{file}")
	public String view( @PathVariable("path") String path, @PathVariable("file") String file, @RequestParam Map<String, String> map, ModelMap model ) {

		if ( map.get("tb_name") != null ) {
			model.put( "beanBBS", daoBBS.getBbs( map.get("tb_name") ) );
		}

		return "front/html/" + path + "/" + file;
	}


	/**
	 * SSO 로그인 처리
	 * @param map
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/sso/doLogin")
	public String view( @RequestParam Map<String, String> map, ModelMap model ) {

		model.put("params", map);

		return "front/html/login";
	}


}