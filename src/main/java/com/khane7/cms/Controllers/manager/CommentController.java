package com.khane7.cms.Controllers.manager;

import com.khane7.cms.Application;
import com.khane7.cms.Beans.BeanComment;
import com.khane7.cms.Common.Utility;
import com.khane7.cms.Dao.DaoBoardComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by khane7 on 2016-02-21.
 */
@Controller
@RequestMapping(value = Application.MANAGER_URL + "/comment")
public class CommentController extends Application {

	@Autowired
	DaoBoardComment daoBoardComment;

	@RequestMapping(value = "/")
	public String index ( @RequestParam Map<String, String> map, ModelMap model) {

		return Application.MANAGER_URL + "/board/comment";
	}


	@RequestMapping(value = "/front")
	public String front ( @RequestParam Map<String, String> map, ModelMap model) {

		model.put("tb_idx", map.get("tb_idx"));

		return FRONT + "front/skin/commons/comment";
	}


	@RequestMapping(value = "/getCommentList")
	@ResponseBody
	public Map<String, Object> getCommentList ( @RequestParam Map<String, String> map, ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			List<BeanComment> listComment = null;

			if ( (map.get("comment-tb_name") != null && map.get("comment-tb_name").trim().equals("") != true) && (map.get("comment-tb_idx") != null && map.get("comment-tb_idx").trim().equals("") != true) ) {
				String tb_comment = map.get("comment-tb_name");
				int tb_idx = Integer.parseInt(map.get("comment-tb_idx"));

				listComment = daoBoardComment.getCommentList(Utility.getTbNameComment(tb_comment), tb_idx, null, null, null, null, null);
			}

			results.put("status", "OK");
			results.put("listComment", listComment);

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}



	@RequestMapping(value = "/getCommentOne")
	@ResponseBody
	public Map<String, Object> getCommentOne ( @RequestParam Map<String, String> map, ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			String tb_comment = map.get("comment-tb_name");
			int idx = Integer.parseInt(map.get("comment-idx"));

			BeanComment beanComment = daoBoardComment.getCommentOne( Utility.getTbNameComment(tb_comment), idx);

			results.put("status", "OK");
			results.put("comment", beanComment);

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}



	@RequestMapping(value = "/addComment")
	@ResponseBody
	public Map<String, Object> addComment ( @RequestParam Map<String, String> map, ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			int idx = Integer.parseInt( (map.get("comment-idx") != null && map.get("comment-idx").trim().equals("") == false ) ? map.get("comment-idx") : "0" );
			String tb_comment = map.get("comment-tb_name");
			int tb_idx = Integer.parseInt(map.get("comment-tb_idx"));

			BeanComment beanComment = new BeanComment();
			beanComment.setIdx( idx );
			beanComment.setTb_idx(tb_idx);
			beanComment.setTb_name( Utility.getTbNameComment(tb_comment) );
			beanComment.setContent_text(map.get("comment-content"));
			beanComment.setWriter(map.get("comment-writer"));
			beanComment.setWriter_key(map.get("comment-writer_key"));
			beanComment.setWriter_pw(map.get("comment-writer_pw"));

			daoBoardComment.setCommentOne(beanComment);

			results.put("status", "OK");

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}



	@RequestMapping(value = "/removeComment")
	@ResponseBody
	public Map<String, Object> dleteCommentOne ( @RequestParam Map<String, String> map, ModelMap model) {

		Map<String, Object> results = new HashMap<String, Object>();

		try {

			String tb_comment = map.get("comment-tb_name");
			int idx = Integer.parseInt(map.get("comment-idx"));

//			BeanComment beanComment = daoBoardComment.getCommentOne(tb_comment, idx);
			daoBoardComment.delCommentOne( Utility.getTbNameComment(tb_comment), idx);

			results.put("status", "OK");

		} catch (Exception e) {
			e.printStackTrace();
			results.put("status", "FAIL");
			results.put("msg", e.getMessage());
		}

		return results;
	}





}
