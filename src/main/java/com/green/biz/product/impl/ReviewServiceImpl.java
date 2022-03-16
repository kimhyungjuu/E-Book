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
	public void insertReview(ReviewVO vo) {

		reviewDao.insertReview(vo);
	}

	@Override
	public List<ReviewVO> listReview(ReviewVO vo) {
		
		return reviewDao.listReview(vo);
	}

	@Override
	public void deleteReview(int rseq) {
		
		reviewDao.deleteReview(rseq);
	}

	@Override
	public void updateReview(ReviewVO vo) {

		reviewDao.updateReview(vo);
	}

}
