package com.khane7.cms.front;

import com.khane7.cms.Application;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

/**
 * Created by khane7 on 2016-02-27.
 */
@Controller
@RequestMapping(value = Application.FRONT + "/file")
public class FileFrontController extends Application {

	@RequestMapping(value = "/showUploader")
	public String showUploader ( @RequestParam Map<String, String> map, ModelMap model) {

		return FRONT + "front/skin/commons/uploader";
	}

}
