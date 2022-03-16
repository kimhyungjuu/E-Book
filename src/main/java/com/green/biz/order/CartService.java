package com.green.biz.order;

import java.util.List;

import com.green.biz.dto.CartVO;

public interface CartService {

	// 장바구니 담기
	void insertCart(CartVO vo);

	// 장바구니 목록
	List<CartVO> listCart(String userid);

	// 장바구니 항목 삭제
	void deleteCart(int cseq);
	
	// 장바구니 업데이트
	void updateCart(int cseq);

}