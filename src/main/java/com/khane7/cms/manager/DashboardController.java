package com.khane7.cms.manager;

import com.khane7.cms.Application;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by khane7 on 2017-10-02.
 */
@Controller
public class DashboardController extends Application {



	@RequestMapping(value = { "dashboard", "dashboard/" } )
	public String index () {

		return null;
	}

}
