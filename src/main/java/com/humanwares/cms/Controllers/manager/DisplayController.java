package com.humanwares.cms.Controllers.manager;

import com.humanwares.cms.Application;
import com.humanwares.cms.Beans.BeanBanner;
import com.humanwares.cms.Beans.BeanPopup;
import com.humanwares.cms.Dao.DaoDisplay;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by khane7 on 2016-03-16.
 */

@Controller
@RequestMapping(value = Application.MANAGER_URL + "/display_manager")
public class DisplayController extends Application {

	@Autowired
	DaoDisplay daoDisplay;


	@RequestMapping(value = "/banner/showBannerList")
	public String showBannerList ( @RequestParam Map<String, String> map, ModelMap model) {

		model.put("bannerList", daoDisplay.getBannerList() );

		return "cms_manager/display_manager/banner/list";
	}


	@RequestMapping(value = "/banner/getBannerOne")
	public @ResponseBody Map<String, Object> getBannerOne ( @RequestParam Map<String, String> map, ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			int idx = Integer.parseInt(map.get("idx"));
			results.put("banner", daoDisplay.getBannerOne(idx));
			results.put("status", "OK");

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}


	@RequestMapping(value = "/banner/getBannerList")
	public @ResponseBody Map<String, Object> getBannerList ( ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			results.put("status", "OK");
			results.put("bannerList", daoDisplay.getBannerList());

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}



	@RequestMapping(value = "/banner/setBannerOne")
	public @ResponseBody Map<String, Object> setBannerOne (BeanBanner beanBanner, ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			beanBanner.setBanner_img(beanBanner.getBanner_img_data());
			int idx = daoDisplay.setBanner(beanBanner);

			results.put("status", "OK");
			results.put("idx", idx);

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}


	@RequestMapping(value = "/banner/deleteBanner")
	public @ResponseBody Map<String, Object> deleteBannerOne (BeanBanner beanBanner, ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			daoDisplay.deleteBanner(beanBanner.getIdx());

			results.put("status", "OK");

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}









	@RequestMapping(value = "/popup/showPopupList")
	public String showPopupList ( @RequestParam Map<String, String> map, ModelMap model) {

		model.put("popupList", daoDisplay.getPopupList() );

		return "cms_manager/display_manager/popup/list";
	}



	@RequestMapping(value = "/popup/preview")
	public String showPopupPreview ( @RequestParam Map<String, String> map, ModelMap model) {

		model.put("popup", daoDisplay.getPopupOne(Integer.parseInt(map.get("idx"))) );

		return "cms_manager/display_manager/popup/preview";
	}


	@RequestMapping(value = "/popup/view")
	public String showPopupView ( @RequestParam Map<String, String> map, ModelMap model) {

		model.put("popup", daoDisplay.getPopupOne(Integer.parseInt(map.get("idx"))) );

		return "cms_manager/display_manager/popup/view";
	}



	@RequestMapping(value = "/popup/getPopupOne")
	public @ResponseBody Map<String, Object> getPopupOne ( @RequestParam Map<String, String> map, ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			int idx = Integer.parseInt(map.get("idx"));
			results.put("popup", daoDisplay.getPopupOne(idx));
			results.put("status", "OK");

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}


	@RequestMapping(value = "/popup/getPopupList")
	public @ResponseBody Map<String, Object> getPopupList ( ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			results.put("status", "OK");
			results.put("popupList", daoDisplay.getPopupList());

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}



	@RequestMapping(value = "/popup/setPopupOne")
	public @ResponseBody Map<String, Object> setPopupOne (BeanPopup beanPopup, ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			beanPopup.setImg_main(beanPopup.getImg_main_data());
			int idx = daoDisplay.setPopup(beanPopup);

			results.put("status", "OK");
			results.put("idx", idx);

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}


	@RequestMapping(value = "/popup/deletePopup")
	public @ResponseBody Map<String, Object> deletePopupOne (BeanPopup beanPopup, ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			daoDisplay.deletePopup(beanPopup.getIdx());

			results.put("status", "OK");

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}


}
