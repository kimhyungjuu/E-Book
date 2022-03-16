package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ReviewVO;

@Repository
public class ReviewDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 리뷰 작성
	public void insertReview(ReviewVO vo) {
		
		mybatis.insert("mappings.review-mapping.insertReview",vo);
	}
	
	// 리뷰 목록
	public List<ReviewVO> listReview(ReviewVO vo) {
		
		return mybatis.selectList("mappings.review-mapping.listReview", vo);
	}
	
	// 리뷰목록에서 항목 삭제
	public void deleteReview(int rseq) {
		
		mybatis.delete("mappings.review-mapping.deleteReview", rseq);
	}
	
	// 리뷰목록에서 항목 업데이트
	public void updateReview(ReviewVO vo) {
		
		mybatis.delete("mappings.review-mapping.updateReview", vo);
	}
}
