package com.khane7.cms.manager.system.comtrollers;

import com.khane7.cms.Application;
import com.khane7.cms.manager.account.dao.DaoAccount;
import com.khane7.cms.manager.board_manager.vo.BeanBBS;
import com.khane7.cms.manager.board_manager.dao.DaoBBS;
import com.khane7.common.Utility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.rmi.CORBA.Util;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/cms_manager")
public class LayoutController extends Application {

	@Autowired
	HttpServletRequest request;

	@Autowired
	DaoBBS daoBBS;

	@Autowired
	DaoAccount daoAccount;

	@RequestMapping(value="/getLayoutHeader")
	public String getAdminLayoutHeader (ModelMap model) {

		if ( this.getSSUser() != null ) {
			model.addAttribute("themes", daoAccount.getThemes(this.getSSUser().getUser_id()) );
		}

		return "/cms_manager/layout/header";
	}
	
	@RequestMapping(value="/getLayoutTop")
	public String getAdminLayoutTop () {
			
		return "/cms_manager/layout/top";
	}
	
	@RequestMapping(value="/getLayoutNavigator")
	public String getAdminLayoutNavigator () {
		
		return "/cms_manager/layout/navigator";
	}

	@RequestMapping(value="/getLayoutLeft")
	public String getAdminLayoutLeft ( ModelMap model ) {

		List<BeanBBS> bbsList4Menu = daoBBS.getBbsList();

		model.put("bbsList4Menu", bbsList4Menu);

		return "/cms_manager/layout/left";
	}

	@RequestMapping(value="/getLayoutRight")
	public String getAdminLayoutRight () {

		return "/cms_manager/layout/right";
	}
	
	@RequestMapping(value="/getLayoutBottom")
	public String getAdminLayoutBottom () {
		
		return "/cms_manager/layout/bottom";
	}
	
	@RequestMapping(value="/getLayoutTail")
	public String getAdminLayoutTail () {
		
		return "/cms_manager/layout/tail";
	}





	@RequestMapping(value="/getManagerTop")
	public String getManagerTop (Model model) {

		model.addAttribute("themes", daoAccount.getThemes(this.getSSUser().getUser_id()) );

		return "/cms_manager/layout/manager_top";
	}

	@RequestMapping(value="/getManagerBottom")
	public String getManagerBottom () {

		return "/cms_manager/layout/manager_bottom";
	}



}
