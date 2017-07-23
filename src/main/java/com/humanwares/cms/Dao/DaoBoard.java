package com.humanwares.cms.Dao;

import com.humanwares.cms.Beans.BeanBoard;

import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by khane7 on 2016-02-17.
 */
@Repository
public class DaoBoard extends DaoBase {


	public int getBoardCount ( Map<String, Object> params ) {

		return sqlSession.selectOne("BOARD.select_board_count", params);
	}


	public int getBoardCount4Manager ( String tb_name, int page, int page_count, String  title, String  content_text, String writer_key, String writer, String is_use, String is_notice ) {

		params = new HashMap<String, Object>();
		params.put("tb_name", tb_name);
		params.put("title", title);
		params.put("content_text", content_text);
		params.put("writer_key", writer_key);
		params.put("writer", writer);
		params.put("is_use", is_use);
		params.put("is_notice", is_notice);
		params.put("is_manager", 'Y');

		return getBoardCount(params);
	}

	public int getBoardCount4Front ( String tb_name, int page, int page_count, String  title, String  content_text, String writer_key, String writer, String is_use, String is_notice ) {

		params = new HashMap<String, Object>();
		params.put("tb_name", tb_name);
		params.put("title", title);
		params.put("content_text", content_text);
		params.put("writer_key", writer_key);
		params.put("writer", writer);
		params.put("is_use", is_use);
		params.put("is_notice", is_notice);
		params.put("is_manager", 'N');

		return getBoardCount(params);
	}



	public List<BeanBoard> getBoardList ( Map<String, Object> params ) {

		return sqlSession.selectList("BOARD.select_board", params);
	}

	public List<BeanBoard> getBoardList4Manager ( String tb_name, int page, int page_count, String  title, String  content_text, String writer_key, String writer, String is_use, String is_notice ) {

		params = new HashMap<String, Object>();
		params.put("tb_name", tb_name);
		params.put("start", (page - 1) * page_count );
		params.put("page_count", page_count);
		params.put("title", title);
		params.put("content_text", content_text);
		params.put("writer_key", writer_key);
		params.put("writer", writer);
		params.put("is_use", is_use);
		params.put("is_notice", is_notice);
		params.put("is_manager", 'Y');

		return getBoardList(params);
	}

	public List<BeanBoard> getBoardList4Front ( String tb_name, int page, int page_count, String  title, String  content_text, String writer_key, String writer, String is_use, String is_notice ) {

		params = new HashMap<String, Object>();
		params.put("tb_name", tb_name);
		params.put("start", (page - 1) * page_count );
		params.put("page_count", page_count);
		params.put("title", title);
		params.put("content_text", content_text);
		params.put("writer_key", writer_key);
		params.put("writer", writer);
		params.put("is_use", is_use);
		params.put("is_notice", is_notice);
		params.put("is_manager", 'N');

		return getBoardList(params);
	}




	public BeanBoard getBoardOne ( String tb_name, int idx ) {

		params = new HashMap<String, Object>();
		params.put("tb_name", tb_name);
		params.put("idx", idx);

		return sqlSession.selectOne("BOARD.select_board", params);
	}


	public BeanBoard getBoardReply ( String tb_name, int pidx ) {

		params = new HashMap<String, Object>();
		params.put("tb_name", tb_name);
		params.put("pidx", pidx);

		return sqlSession.selectOne("BOARD.select_board", params);
	}


	public String getMaxTreeLevel ( String tb_name, String tree_level ) {
		params = new HashMap<String, Object>();
		params.put("tb_name", tb_name);
		params.put("tree_level", tree_level);
		return sqlSession.selectOne("select_max_treelevel", params);
	}


	public int setBoardOne ( BeanBoard beanBoard) {

		if ( beanBoard.getIdx() <= 0  ) {

			int max = 0;
			params = new HashMap<String, Object>();
			params.put("tb_name", beanBoard.getTb_name());
			if ( sqlSession.selectOne("COMMON.select_max_idx", params)  == null ) {
				max = 0;
			} else {
				max = sqlSession.selectOne("COMMON.select_max_idx", params );
			}
			beanBoard.setIdx(max + 1);

			if ( beanBoard.getPidx() == 0 ) {
				beanBoard.setPidx( max + 1 );
			}

			if ( beanBoard.getTree_level() == null || beanBoard.getTree_level().trim().equals("") == true ) {
				beanBoard.setTree_level(String.valueOf(beanBoard.getIdx()) );
			}

			sqlSession.insert("BOARD.insert_board", beanBoard);
		} else {
			sqlSession.update("BOARD.update_board", beanBoard);
		}

		return beanBoard.getIdx();
	}

	public void delBoardOne ( BeanBoard beanBoard) {

		sqlSession.delete("BOARD.remove_board", beanBoard);
	}


	public void delBoardOne ( String tb_name, int idx ) {

		params = new HashMap<String, Object>();
		params.put("tb_name", tb_name);
		params.put("idx", idx);
		params.put("is_use", "N");

		sqlSession.delete("BOARD.delete_board", params);
	}

}
