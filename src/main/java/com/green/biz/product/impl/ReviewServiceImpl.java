package com.green.biz.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.ReviewDAO;
import com.green.biz.dto.ReviewVO;
import com.green.biz.product.ReviewService;

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
	public void updateReview(ReviewVO rv) {

		reviewDao.updateReview(rv);
	}

}
