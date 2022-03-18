package com.green.biz.wishlist;

import java.util.List;

import com.green.biz.dto.WishlistVO;

public interface WishlistService {

	// 위시리스트 담기
	void insertWishlist(WishlistVO vo);

	// 위시리스트 목록
	List<WishlistVO> listWishlist(String userid);

	// 위시리스트 항목 삭제
	void deleteWishlist(int wseq);
	
	// 위시리스트 업데이트
	void updateWishlist(int wseq);

}