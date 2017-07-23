package com.humanwares.cms.Controllers.manager;

import com.humanwares.cms.Beans.BeanBBS;
import com.humanwares.cms.Dao.DaoBBS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/cms_manager")
public class LayoutController {

	@Autowired
	DaoBBS daoBBS;

	@RequestMapping(value="/getLayoutHeader")
	public String getAdminLayoutHeader () {
		
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
	public String getManagerTop () {

		return "/cms_manager/layout/manager_top";
	}

	@RequestMapping(value="/getManagerBottom")
	public String getManagerBottom () {

		return "/cms_manager/layout/manager_bottom";
	}



}
