package com.green.biz.product;

import java.util.List;

import com.green.biz.dto.ReviewVO;

public interface ReviewService {

	// 리뷰 작성
	void insertReview(ReviewVO vo);

	// 리뷰 목록
	List<ReviewVO> listReview(ReviewVO vo);

	// 리뷰목록에서 항목 삭제
	void deleteReview(int rseq);

	// 리뷰목록에서 항목 업데이트
	public void updateReview(ReviewVO vo);

}