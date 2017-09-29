package com.khane7.cms.service;

import com.khane7.cms.manager.board_manager.vo.BeanBBS;
import com.khane7.cms.manager.board.vo.BeanBoard;
import com.khane7.common.PageHelper;
import com.khane7.common.Utility;
import com.khane7.cms.manager.board_manager.dao.DaoBBS;
import com.khane7.cms.manager.board.dao.DaoBoard;
import com.khane7.cms.manager.file.dao.DaoFile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by khane7 on 2016-02-27.
 */

@Service
public class BoardService {

	@Autowired
	DaoBoard daoBoard;

	@Autowired
	DaoBBS daoBBS;

	@Autowired
	DaoFile daoFile;


	public Map<String, Object> getPartialList ( String tb_name_, int pageNum_, int viewCount_ ) {


		Map<String, Object> results = new HashMap<String, Object>();


		System.out.println(tb_name_);
		BeanBBS beanBBS = daoBBS.getBbs( tb_name_ );

		System.out.println(beanBBS.getBoard_name());

		int page = ( pageNum_ > 0 ) ? pageNum_ : 1;
		int viewCount = viewCount_;

		int maxCount = daoBoard.getBoardCount4Front(Utility.getTbName(tb_name_), page, viewCount, null, null, null, null, null, null);
		List<BeanBoard> boardList = daoBoard.getBoardList4Front(Utility.getTbName(tb_name_), page, viewCount, null, null, null, null, null, null);

		loopFile : for (int i = 0; i < boardList.size(); i++) {

			try {

				boardList.get(i).setReply(daoBoard.getBoardReply(Utility.getTbName(beanBBS.getBoard_key()), boardList.get(i).getPidx()));

				if ( boardList.get(i).getOpt1() != null && boardList.get(i).getOpt1().trim().equals("") == false ) {
					boardList.get(i).setThumbnail( daoFile.getFile(Integer.parseInt(boardList.get(i).getOpt1())) );
				}
				boardList.get(i).setAttachList( daoFile.getFileList(Utility.getTbName(beanBBS.getBoard_key()), boardList.get(i).getIdx()) );

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				continue loopFile;
			}

		}

		results.put("boardList", boardList);
		results.put("beanBBS", beanBBS);
		results.put("maxCount", maxCount );
		results.put("boardList", boardList );
		results.put("page", page );
		results.put("PageLink", PageHelper.getPageLink(maxCount, page, viewCount));


		return results;

	}



}
