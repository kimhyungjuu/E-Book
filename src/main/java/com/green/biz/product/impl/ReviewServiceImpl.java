package com.green.biz.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.ReviewDAO;
import com.green.biz.dto.ProductVO;
import com.green.biz.dto.ReviewVO;
import com.green.biz.product.ReviewService;

import utils.Criteria;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDAO reviewDao;

	@Override
	public void insertReview(ReviewVO rv) {

		reviewDao.insertReview(rv);
	}

	@Override
	public List<ReviewVO> listReview(ReviewVO rv) {
		
		return reviewDao.listReview(rv);
	}

	@Override
	public void deleteReview(int rseq) {
		
		reviewDao.deleteReview(rseq);
	}


	@Override
	public int countReviewList(String title) {
		
		return reviewDao.countReviewList(title);
	}

	@Override
	public List<ReviewVO> getreviewPaging(Criteria criteria, String title) {

		return reviewDao.getreviewPaging(criteria, title);
	}

	@Override
	public int ReviewAvg(ReviewVO rv) {
		
		return reviewDao.ReviewAvg(rv);
	}

}
