package com.green.biz.qna.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.QnaDAO;
import com.green.biz.dto.NoticeVO;
import com.green.biz.dto.QnaVO;
import com.green.biz.qna.QnaService;

@Service("qnaService")
public class QnaServiceImpl implements QnaService {
	@Autowired
	private QnaDAO qnaDao;

	@Override
	public List<QnaVO> listAllQna() {
		return qnaDao.listAllQna();
	}

	@Override
	public QnaVO getQna(int qseq) {
		return qnaDao.getQna(qseq);
	}

	@Override
	public void updateQna(QnaVO vo) {
		qnaDao.updateQna(vo);
	}
	
	@Override
	public void insertQna(QnaVO vo) {
		
		qnaDao.insertQna(vo);
	}
	
	@Override
	public List<QnaVO> listQna(String id) {
		
		return qnaDao.listQna(id);
	}

	@Override
	public void deleteQna(int qseq) {
		qnaDao.deleteQna(qseq);
	}

	
}
