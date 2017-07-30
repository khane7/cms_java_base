package com.khane7.cms.Dao;

import com.khane7.cms.Beans.BeanFile;

import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by khane7 on 2016-02-17.
 */
@Repository
public class DaoFile extends DaoBase {

	public List<BeanFile> getFileList ( String tb_name, int tb_idx ) {

		params = new HashMap<String, Object>();
		params.put("tb_idx", tb_idx);
		params.put("tb_name", tb_name);

		return sqlSession.selectList("FILE.select_file", params);
	}


	public List<BeanFile> getFileList ( String file_idxs ) {

		String idxs[] = file_idxs.split("[,]");

		params = new HashMap<String, Object>();

		List<BeanFile> beanFileList = new ArrayList<BeanFile>();
		for ( int i = 0; i < idxs.length; i++) {
			if ( idxs[i].trim().equals("") == false ) {
				params.clear();
				params.put("idx", Integer.parseInt(idxs[i]));
				beanFileList.add((BeanFile) sqlSession.selectOne("FILE.select_file", params));
			}
		}

		return beanFileList;
	}


	public BeanFile getFile ( int idx ) {

		params = new HashMap<String, Object>();
		params.put("idx", idx);

		return sqlSession.selectOne("FILE.select_file", params);
	}


	public void setFileList ( String file_idxs, int tb_idx, String tb_name ) {

		String idxs[] = file_idxs.split("[,]");

		for ( int i = 0; i < idxs.length; i++) {

			if ( idxs[i].trim().equals("") == false ) {
				BeanFile beanFile = new BeanFile();
				beanFile.setIdx(Integer.parseInt(idxs[i]));
				beanFile.setTb_idx(tb_idx);
				beanFile.setTb_name(tb_name);

				sqlSession.update("FILE.update_file", beanFile);
			}
		}

	}



	public int addFile ( BeanFile beanFile ) {

		int max = 0;
		if ( sqlSession.selectOne("FILE.select_file_max") == null ) {
			max = 0;
		} else {
			max = sqlSession.selectOne("FILE.select_file_max");
		}

		beanFile.setIdx(max + 1);

		sqlSession.insert("FILE.insert_file", beanFile);

		return beanFile.getIdx();
	}


	public void dropFile ( BeanFile beanFile ) {

		sqlSession.delete("FILE.delete_file", beanFile);
	}

	public void dropFile ( int idx ) {

		params = new HashMap<String, Object>();
		params.put("idx", idx);

		sqlSession.insert("FILE.delete_file", params);
	}

	public void dropFile ( int tb_idx, String tb_name ) {

		params = new HashMap<String, Object>();
		params.put("tb_idx", tb_idx);
		params.put("tb_name", tb_name);

		sqlSession.insert("FILE.delete_file", params);
	}


}
