package com.humanwares.cms.Dao;

import com.humanwares.cms.Beans.BeanBBS;

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

		params = new HashMap<String, Object>();

		params.put("tb_name", "tb_board_" + tb_name_ );
		params.put("tb_comment_name", "tb_board_" + tb_name_ + "_comment");
//		params.put("tb_file_name", "tb_board_" + tb_name_ + "_file");

		return params;
	}

	public void createBBS ( String tb_name_ ) {

		params = getTableName(tb_name_);

		sqlSession.update("BBS.create_bbs", params);
		sqlSession.update("BBS.create_bbs_comment", params);
//		sqlSession.update("BBS.create_bbs_file", params);
	}

	public void dropBBS ( String tb_name_ ) {

		params = getTableName(tb_name_);

		sqlSession.update("BBS.drop_bbs", params);
		sqlSession.update("BBS.drop_bbs_comment", params);
//		sqlSession.update("BBS.drop_bbs_file", params);
	}


	public List<BeanBBS> getBbsList () {

		return sqlSession.selectList("BBS.select_bbs");
	}

	public BeanBBS getBbsOne ( int idx ) {

		params = new HashMap<String, Object>();
		params.put("idx", idx);

		return sqlSession.selectOne("BBS.select_bbs", params);
	}

	public BeanBBS getBbs ( String board_key ) {

		params = new HashMap<String, Object>();
		params.put("board_key", board_key);

		return sqlSession.selectOne("BBS.select_bbs", params);
	}

	public void setBbs ( BeanBBS beanBBS ) {

		if ( beanBBS.getIdx() <= 0 || getBbsOne(beanBBS.getIdx()) == null ) {

			sqlSession.insert("BBS.insert_bbs", beanBBS);

			createBBS( beanBBS.getBoard_key() );

		} else {

			sqlSession.update("BBS.update_bbs", beanBBS);

			createBBS( beanBBS.getBoard_key() );
		}
	}

	public void deleteBbs ( BeanBBS beanBBS ) {

		sqlSession.delete("BBS.delete_bbs", beanBBS );
		dropBBS(beanBBS.getBoard_key());
	}


}
