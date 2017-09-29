package com.khane7.cms.manager.board_manager.controllers;

import com.khane7.cms.Application;
import com.khane7.cms.manager.board_manager.vo.BeanBBS;
import com.khane7.cms.manager.board_manager.dao.DaoBBS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by khane7 on 2016-02-15.
 */
@Controller
@RequestMapping(value = Application.MANAGER_URL + "/board_manager")
public class BbsController extends Application {

	@Autowired
	DaoBBS daoBBS;

	@RequestMapping(value = "/")
	public String showBBSManager (ModelMap model) {

		model.put("bbsList", daoBBS.getBbsList());

		return "cms_manager/board_manager/index";
	}


	@RequestMapping(value = "/showDetail")
	public String showBBSDetail ( @RequestParam Map<String, String> params, ModelMap model, HttpSession httpSession) {

		if ( params.get("idx") != null ) {
			model.put("MODE", "EDIT");
		} else {
			model.put("MODE", "ADD");
		}

		File skin[] = new File( getPathSkin(httpSession) + "/board" ).listFiles();

		List<String> skinList = new ArrayList<String>();
		for (int i = 0; i < skin.length; i++) {
			skinList.add( skin[i].getName() );
		}

		model.put("skinList", skinList);

		return "cms_manager/board_manager/form";
	}


	@RequestMapping(value = "/getBBSList")
	public @ResponseBody Map<String, Object> getBBSList () {

		Map<String, Object>  result = new HashMap<String, Object>();

		try {

			List<BeanBBS> bbsList = daoBBS.getBbsList();

			result.put("result", "OK");
			result.put("bbsList", bbsList);

		} catch (Exception e) {
			e.printStackTrace();
			result.put("result", "FAIL");
			result.put("msg", e.getMessage());
		}

		return result;
	}



	@RequestMapping(value = "/getBBS")
	public @ResponseBody Map<String, Object> getBBS ( @RequestParam Map<String, Object> params, ModelMap model) {

		Map<String, Object>  result = new HashMap<String, Object>();

		try {

			BeanBBS beanBBS = daoBBS.getBbsOne(Integer.parseInt(params.get("idx").toString() ));

			result.put("result", "OK");
			result.put("beanBBS", beanBBS);

		} catch (Exception e) {
			e.printStackTrace();
			result.put("result", "FAIL");
			result.put("msg", e.getMessage());
		}

		return result;
	}



	@RequestMapping(value = "/setBBS")
	public @ResponseBody Map<String, Object> setBBS ( @RequestParam Map<String, Object> params, ModelMap model) {

		Map<String, Object>  result = new HashMap<String, Object>();

		try {

			if ( params.get("board_key").toString().trim().equals("") == true ) {
				result.put("result", "FAIL");
				result.put("msg", "게시판 코드 누락");
				return result;
			}

			BeanBBS beanBBS = new BeanBBS();

			beanBBS.setIdx(Integer.parseInt(params.get("idx").toString()));
			beanBBS.setBoard_key(params.get("board_key").toString());
			beanBBS.setBoard_name(params.get("board_name").toString());
			beanBBS.setSkin(params.get("skin").toString());
			beanBBS.setIs_notice((params.get("is_notice") != null) ? params.get("is_notice").toString() : "N");
			beanBBS.setIs_comment((params.get("is_comment") != null) ? params.get("is_comment").toString() : "N");
			beanBBS.setIs_comment_level((params.get("is_comment_level") != null) ? Integer.parseInt(params.get("is_comment_level").toString()) : 99);
			beanBBS.setIs_file((params.get("is_file") != null) ? params.get("is_file").toString() : "N");
			beanBBS.setIs_thumbnail((params.get("is_thumbnail") != null) ? params.get("is_thumbnail").toString() : "N");
			beanBBS.setIs_secret((params.get("is_secret") != null) ? params.get("is_secret").toString() : "N");
			beanBBS.setIs_nologin((params.get("is_nologin") != null) ? params.get("is_nologin").toString() : "N");
			beanBBS.setPage_count(Integer.parseInt((params.get("page_count") != null) ? params.get("page_count").toString() : "0"));
			beanBBS.setWrite_level(Integer.parseInt((params.get("write_level") != null) ? params.get("write_level").toString() : "99"));

			if ( beanBBS.getIdx() <= 0 && daoBBS.getBbs( beanBBS.getBoard_key() ) != null ) {
				result.put("result", "FAIL");
				result.put("msg", "중복된 게시판 코드");
				return result;
			}

			daoBBS.setBbs(beanBBS);

			result.put("result", "OK");
//			result.put("beanBBS", beanBBS);

		} catch (Exception e) {
			e.printStackTrace();
			result.put("result", "FAIL");
			result.put("msg", e.getMessage());
		}

		return result;
	}


	@RequestMapping(value = "/deleteBBS")
	public @ResponseBody Map<String, Object> deleteBBS ( @RequestParam Map<String, Object> params, ModelMap model) {

		Map<String, Object>  result = new HashMap<String, Object>();

		try {

			BeanBBS beanBBS = daoBBS.getBbsOne(Integer.parseInt(params.get("idx").toString() ));

			if ( beanBBS != null ) {
				daoBBS.deleteBbs( beanBBS );
			} else {
				result.put("result", "FAIL");
				result.put("msg","존재하지 않는 게시판입니다.");
				return result;
			}

			result.put("result", "OK");

		} catch (Exception e) {
			e.printStackTrace();
			result.put("result", "FAIL");
			result.put("msg", e.getMessage());
		}

		return result;
	}




}
