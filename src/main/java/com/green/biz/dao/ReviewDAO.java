package com.green.biz.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ProductVO;
import com.green.biz.dto.ReviewVO;

import utils.Criteria;

@Repository
public class ReviewDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 리뷰 작성
	public void insertReview(ReviewVO rv) {
		
		mybatis.insert("mappings.review-mapping.insertReview", rv);
	}
	
	// 리뷰 목록
	public List<ReviewVO> listReview(ReviewVO rv) {
		
		return mybatis.selectList("mappings.review-mapping.listReview", rv);
	}
	
	// 리뷰목록에서 항목 삭제
	public void deleteReview(int rseq) {
		
		mybatis.delete("mappings.review-mapping.deleteReview", rseq);
	}

	
	// 조회한 상품의 리뷰 총 갯수
	public int countReviewList(String title) {
		
		return mybatis.selectOne("mappings.review-mapping.countReviewList", title);
	}
	
	// 페이지별 리뷰목록 조회
	public List<ReviewVO> getreviewPaging(Criteria criteria, String title) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("criteria", criteria);
		map.put("title", title);
		
		return mybatis.selectList("mappings.product-mapping.reviewPaging", map);
	}
	
	/*
	 * // 별점 평균 업데이트 public void updateReviewAvg(ProductVO vo) {
	 * 
	 * mybatis.update("mappings.product-mapping.updateReviewAvg", vo); }
	 */
	
}
