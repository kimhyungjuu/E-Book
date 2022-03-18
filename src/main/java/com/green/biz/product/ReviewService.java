package com.green.biz.product;

import java.util.List;

import com.green.biz.dto.ProductVO;
import com.green.biz.dto.ReviewVO;

import utils.Criteria;

public interface ReviewService {

	// 리뷰 작성
	void insertReview(ReviewVO rv);

	// 리뷰 목록
	List<ReviewVO> listReview(ReviewVO rv);

	// 리뷰목록에서 항목 삭제
	void deleteReview(int rseq);
	// 리뷰목록에서 항목 업데이트
	public int countReviewList(String title);
	
	public List<ReviewVO> getreviewPaging(Criteria criteria, String title);

	/*
	 * public void updateReviewAvg(ProductVO vo);
	 */}


