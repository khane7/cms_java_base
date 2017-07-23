package com.humanwares.cms.Dao;

import com.humanwares.cms.Beans.BeanBoard;
import com.humanwares.cms.Beans.BeanComment;

import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

/**
 * Created by khane7 on 2016-02-17.
 */
@Repository
public class DaoBoardComment extends DaoBase {

	public int getCommentCount ( String tb_comment_name, String  title, String  content_text, String writer_key, String writer, String is_use ) {

		params = new HashMap<String, Object>();
		params.put("tb_name", tb_comment_name);
		params.put("title", title);
		params.put("content_text", content_text);
		params.put("writer_key", writer_key);
		params.put("writer", writer);
		params.put("is_use", is_use);

		return sqlSession.selectOne("BOARD_COMMENT.select_comment_count", params);
	}

	public List<BeanComment> getCommentList ( String tb_comment_name, int tb_idx, String title, String  content_text, String writer_key, String writer, String is_use ) {

		params = new HashMap<String, Object>();
		params.put("tb_name", tb_comment_name);
		params.put("tb_idx", tb_idx);
//		params.put("start", (page - 1) * page_count );
//		params.put("page_count", page_count);
		params.put("title", title);
		params.put("content_text", content_text);
		params.put("writer_key", writer_key);
		params.put("writer", writer);
		params.put("is_use", is_use);

		return sqlSession.selectList("BOARD_COMMENT.select_comment", params);
	}


	public BeanComment getCommentOne ( String tb_comment_name, int idx ) {

		params = new HashMap<String, Object>();
		params.put("tb_name", tb_comment_name);
		params.put("idx", idx);

		return sqlSession.selectOne("BOARD_COMMENT.select_comment", params);
	}


	public int setCommentOne ( BeanComment beanComment ) {



		if ( beanComment.getIdx() <= 0  ) {

			int max = 0;
			params = new HashMap<String, Object>();
			params.put("tb_name", beanComment.getTb_name() );
			if ( sqlSession.selectOne("COMMON.select_max_idx", params)  == null ) {
				max = 0;
			} else {
				max = sqlSession.selectOne("COMMON.select_max_idx", params );
			}
			beanComment.setIdx( max + 1 );
			beanComment.setPidx(max + 1);

			if ( beanComment.getTree_level() == null || beanComment.getTree_level().trim().equals("") == true ) {
				beanComment.setTree_level(String.valueOf(beanComment.getIdx()) );
			}

			sqlSession.insert("BOARD_COMMENT.insert_comment", beanComment);
		} else {
			sqlSession.update("BOARD_COMMENT.update_comment", beanComment);
		}

		return beanComment.getIdx();
	}

	public void delCommentOne ( BeanComment beanComment) {

		sqlSession.delete("BOARD_COMMENT.remove_comment", beanComment);
	}


	public void delCommentOne ( String tb_comment_name, int idx ) {

		params = new HashMap<String, Object>();
		params.put("tb_name", tb_comment_name);
		params.put("idx", idx);
		params.put("is_use", "N");

		sqlSession.delete("BOARD_COMMENT.delete_comment", params);
	}

}
