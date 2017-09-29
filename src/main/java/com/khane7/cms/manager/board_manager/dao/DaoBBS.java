package com.khane7.cms.manager.board_manager.dao;

import com.khane7.cms.manager.board_manager.vo.BeanBBS;

import com.khane7.cms.manager.system.dao.DaoBase;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by khane7 on 2016-02-15.
 */
@Repository
public class DaoBBS extends DaoBase {

	public Map<String, Object> getTableName (String tb_name_ ) {

		Map<String, Object> params = new HashMap<String, Object>();

		params.put("tb_name", "tb_board_" + tb_name_ );
		params.put("tb_comment_name", "tb_board_" + tb_name_ + "_comment");
//		params.put("tb_file_name", "tb_board_" + tb_name_ + "_file");

		return params;
	}

	public void createBBS ( String tb_name_ ) {

		Map<String, Object> params = getTableName(tb_name_);

		getSqlSession().update("BBS.create_bbs", params);
		getSqlSession().update("BBS.create_bbs_comment", params);
//		getSqlSession().update("BBS.create_bbs_file", params);
	}

	public void dropBBS ( String tb_name_ ) {

		Map<String, Object> params = getTableName(tb_name_);

		getSqlSession().update("BBS.drop_bbs", params);
		getSqlSession().update("BBS.drop_bbs_comment", params);
//		getSqlSession().update("BBS.drop_bbs_file", params);
	}


	public List<BeanBBS> getBbsList () {

		return getSqlSession().selectList("BBS.select_bbs");
	}

	public BeanBBS getBbsOne ( int idx ) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("idx", idx);

		return getSqlSession().selectOne("BBS.select_bbs", params);
	}

	public BeanBBS getBbs ( String board_key ) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("board_key", board_key);

		return getSqlSession().selectOne("BBS.select_bbs", params);
	}

	public void setBbs ( BeanBBS beanBBS ) {

		if ( beanBBS.getIdx() <= 0 || getBbsOne(beanBBS.getIdx()) == null ) {

			getSqlSession().insert("BBS.insert_bbs", beanBBS);

			createBBS( beanBBS.getBoard_key() );

		} else {

			getSqlSession().update("BBS.update_bbs", beanBBS);

			createBBS( beanBBS.getBoard_key() );
		}
	}

	public void deleteBbs ( BeanBBS beanBBS ) {

		getSqlSession().delete("BBS.delete_bbs", beanBBS );
		dropBBS(beanBBS.getBoard_key());
	}


}
