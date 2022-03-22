package com.green.biz.qna;

import java.util.List;

import com.green.biz.dto.QnaVO;

public interface QnaService {
	public QnaVO getQna(int qseq) ;
	
	public List<QnaVO> listAllQna();
	
	public void updateQna(QnaVO vo);
	
	void insertQna(QnaVO vo);
	
	List<QnaVO> listQna(String id);
	
	public void deleteQna(int qseq);
}
